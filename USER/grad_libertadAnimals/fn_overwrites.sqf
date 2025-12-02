EDALYBASE_fnc_getAnimalTarget = {
    /* Copyright 2018 - Association Projets Edaly. All rights reserved. 
    
    Adapted by nomisum for custom private mission

    ignore variable added
    
    */

    diag_log("EDALY OVERWRITES: EDALYBASE_fnc_getAnimalTarget executed");

    if !(params [
        ["_animal", objNull, [objNull]],
        ["_distance", 10, [0]]
    ]) exitWith {
        diag_log("EDALY OVERWRITES: Missing parameter(s)");
        objNull;
    };

    if (isNull(_animal) || {!(alive _animal)}) exitWith {
        diag_log("EDALY OVERWRITES: Arguments invalid value");
        objNull;
    };

    private _cfg = configFile >> "CfgAnimals" >> typeOf(_animal);
    if !isClass(_cfg) exitWith {objNull};

    private _maxDistanceFromHome = getNumber(_cfg >> "maxDistanceFromHome");
    private _smellDistance = getNumber(_cfg >> "smellDistance");
    private _distanceBeforeQuitTrack = getNumber(_cfg >> "attack">> "distanceBeforeQuitTrack");
    private _home = _animal getVariable ["home", getPosATL _animal];
    private _visibility = getNumber(_cfg >> "eyeSightMalus");
    private _follow = getText(_cfg >> "surface");
    private _angleView = getNumber(_cfg >> "viewAngle");
    private _target = objNull;

    {
        if (isNull(_target)
            || {(_target getVariable ["fainted", false]) && {!(_x getVariable ["fainted", false])}}
            || {((_x distance _animal) < (_target distance _animal)) && {!(_x getVariable ["fainted", false]) || {_target getVariable ["fainted", false]}}}
        ) then {
            _target = _x;
        };
    } forEach ((_animal nearEntities _distance) select {
        alive(_x)
        && {_x isNotEqualTo _animal}
        && {typeOf(_x) != typeOf(_animal)}
        && {isNull(attachedTo _x)}
        && {(_x isKindOf "Car") || {(_x isKindOf "Man")}}
        && {!( _x getVariable ["ignoredByAnimals", false])}
        && {(_animal distance _x) <= _distanceBeforeQuitTrack}
        && {(_animal distance2D _home) < _maxDistanceFromHome}
        && {
            (_follow isEqualTo "EVERYWHERE")
            || {(_follow isEqualTo "ONLY_IN_WATER") && {surfaceIsWater (getPos _x)}}
            || {(_follow isEqualTo "ONLY_ON_LAND") && {!(surfaceIsWater (getPos _x))}}
        } && {
            !(_x isKindOf "Car")
            || {isEngineOn _x}
            || {(fullCrew _x) isNotEqualTo []}
        } && {
            !(_x isKindOf "Man")
            || {(vehicle _x) isKindOf "Man"}
        } && {
            (
                (([_animal, "FIRE", _x] checkVisibility [eyePos _animal, eyePos _x]) > _visibility)
                && {[_animal, _x, _angleView] call EdalyBase_fnc_hasDirTo}
            ) || {(_animal distance _x) <= _smellDistance}
        }
    });

    _target;


};



EDALYBASE_fnc_animalAttack = {

    /* Copyright 2018 - Association Projets Edaly. All rights reserved. 
    
    Adapted by nomisum for custom private mission

    ace3 compatibility added
    
    */

   diag_log("EDALY OVERWRITES: EDALYBASE_fnc_animalAttack executed");

    if !canSuspend exitWith {
        diag_log("EDALY OVERWRITES: Functions must be handled by the Scheduler");
    };

    if !(params [
        ["_animal", objNull, [objNull]],
        ["_unit", objNull, [objNull]],
        ["_follow", "EVERYWHERE", [""]]
    ]) exitWith {
        diag_log("EDALY OVERWRITES: Arguments invalid value");
    };

    if (isNull(_animal) || {isNull(_unit)} || {!(_follow in ["EVERYWHERE", "ONLY_ON_LAND", "ONLY_IN_WATER"])}) exitWith {
        diag_log("EDALY OVERWRITES: Arguments invalid value");
    };

    private _cfg = configFile >> "CfgAnimals" >> typeOf(_animal);
    if !isClass(_cfg) exitWith {};

    if !isNull(_animal getVariable ["tracking", objNull]) exitWith {
        diag_log("EDALY OVERWRITES: Animal is already tracking");
    };

    _animal setVariable ["tracking", _unit];

    private _attackDistance = getNumber(_cfg >> "attack" >> "distance");
    private _attackCooldown = getNumber(_cfg >> "attack" >> "cooldown");
    private _attackTimeBeforeStrike = getNumber(_cfg >> "attack" >> "timeBeforeStrike");
    private _attackDamage = getNumber(_cfg >> "attack" >> "damage");
    private _attackExtraRandomDamage = getNumber(_cfg >> "attack" >> "extraRandomDamage");
    private _attackSound = getText(_cfg >> "attack" >> "sound");
    private _attackMove = getText(_cfg >> "attack" >> "move");
    private _visibility = getNumber(_cfg >> "eyeSightMalus");
    private _playCombatSound = {
        [_animal, getArray(_cfg >> "combatSounds") call BIS_fnc_selectRandom, 80] spawn EdalyBase_fnc_say3d;
        _animal setVariable ["SoundAttackLock", time + 5];
    };

    [_animal, ""] remoteExecCall ["switchMove", 0];

    {
        if (!isPlayer(_x) && {!isNull(_x)}) then {
            [_x, ""] remoteExecCall ["switchMove", 0];
        };
        detach _x;
    } forEach (attachedObjects _animal);

    _animal doWatch _unit;

    [] call _playCombatSound;

    _animal forceSpeed (_animal getSpeed "FAST");

    while {
        _fav = [_animal, 50] call EdalyBase_fnc_getAnimalTarget;
        if (!isNull(_fav) && {_fav isNotEqualTo _unit}) then {
            _animal doWatch _fav;
            _animal setVariable ["tracking", _fav];
        };
        _unit = _fav;
        (!isNull(_unit) && {alive _animal});
    } do {
        if ((time >= (_animal getVariable ["SoundAttackLock", 0])) && {random(100) <= 10}) then {
            [] call _playCombatSound;
        };

        if ([_unit, _animal, 1.3] call EdalyBase_fnc_isInsideBoundingBox) then {
            if (((expectedDestination _animal)#1) isNotEqualTo "DoNotPlan") then {
                _animal setDestination [getPosATL _animal, "DoNotPlan", true];
            };

            if ((_animal getVariable ["lastAttack", 0]) < time) then {
                [_animal, _attackSound, 80] call EdalyBase_fnc_say3d;
                if (_attackMove isNotEqualTo "") then {
                    [_animal, _attackMove] remoteExecCall ["switchMove", 0];
                    _animal playMoveNow _attackMove;
                };
                uiSleep _attackTimeBeforeStrike;

                _damage = _attackDamage + random(_attackExtraRandomDamage);
                switch true do {
                    // --- MODIFIED FOR ACE3 MEDICAL COMPATIBILITY ---
                    case ((_unit isKindOf "Man") && {!isClass(missionConfigFile >> "CfgAnimals" >> typeOf(_unit))}): {
                        for "_i" from 0 to 2 do {
                            private _hitPointsDamage = getAllHitPointsDamage _unit;
                            private _hitIndex = -1;
                            
                            // We will determine the ACE Body Part instead of the vanilla hitpoint string
                            private _aceBodyPart = "Body"; 

                            if (_hitPointsDamage isNotEqualTo []) then {
                                private _dist = -1;
                                private _meet = _animal modelToWorld (_animal selectionPosition "head");

                                // Iterate over SELECTION NAMES (_hitPointsDamage#1)
                                {
                                    private "_curPos";
                                    if (_x isEqualTo "face_hub") then {
                                        _curPos = _unit modelToWorld (_unit selectionPosition "head");
                                    } else {
                                        _curPos = _unit modelToWorld (_unit selectionPosition _x);
                                    };
                                    _curDist = _meet distance _curPos;
                                    
                                    // Find closest body part
                                    if (((_dist isEqualTo -1) || {_curDist < _dist})) then {
                                        _hitIndex = _forEachIndex;
                                        _dist = _curDist;
                                    };
                                } forEach (_hitPointsDamage#1);
                            };

                            // Convert closest vanilla selection to ACE Body Part
                            if (_hitIndex isNotEqualTo -1) then {
                                private _selection = toLower ((_hitPointsDamage#1) select _hitIndex);
                                
                                switch (true) do {
                                    case (_selection in ["head", "face_hub", "neck", "face"]): { _aceBodyPart = "Head"; };
                                    case (_selection in ["pelvis", "spine", "spine1", "spine2", "spine3", "body"]): { _aceBodyPart = "Body"; };
                                    case ((["arm", _selection] call BIS_fnc_inString) || (["hand", _selection] call BIS_fnc_inString)): {
                                        if (["left", _selection] call BIS_fnc_inString || "_l" in _selection) then { _aceBodyPart = "LeftArm"; } else { _aceBodyPart = "RightArm"; };
                                    };
                                    case ((["leg", _selection] call BIS_fnc_inString)): {
                                        if (["left", _selection] call BIS_fnc_inString || "_l" in _selection) then { _aceBodyPart = "LeftLeg"; } else { _aceBodyPart = "RightLeg"; };
                                    };
                                    default { _aceBodyPart = "Body"; };
                                };
                            };

                            // Apply ACE3 Damage
                            // Syntax: [unit, damage, bodyPart, damageType]
                            [_unit, _damage, _aceBodyPart, "bite"] remoteExecCall ["ace_medical_fnc_addDamageToUnit", _unit];
                        };
                    };
                    case (_unit isKindOf "Car"): {
                        _hitPointsDmg = getAllHitPointsDamage _unit;
                        _hit = (_hitPointsDmg#0) call BIS_fnc_selectRandom;

                        [
                            _unit, [
                                _hit,
                                ((_unit getHitPointDamage _hit) + _damage) min 1
                            ]
                        ] remoteExecCall ["setHitPointDamage", _unit];
                        [_unit, "clang_metal", 20] call EdalyBase_fnc_say3d;
                    };
                    default {
                        _unit setDamage (((damage _unit) + _damage) min 1);
                    };
                };

                _animal setVariable ["lastAttack", time + _attackCooldown];
            };
        } else {
            private _pos = getPosASL _unit;
            if !(surfaceIsWater _pos) then {
                _pos = ASLToATL _pos;
            };

            if (((expectedDestination _animal)#0) isNotEqualTo _pos) then {
                _animal setDestination [_pos, "LEADER DIRECT", true];
            };
        };

        uiSleep 0.3;
    };

    if !isNull(_animal) then {
        _animal doWatch objNull;
        _animal setVariable ["tracking", nil];
    };

};


EDALYBASE_fnc_createAnimal = {

    /* Copyright 2018 - Association Projets Edaly. All rights reserved 
    
    ignore variable added (animals dont attack each other anymore)
    */

   diag_log("EDALY OVERWRITES: EDALYBASE_fnc_createAnimal executed");

    if !(params [
        ["_className", "", [""]],
        ["_position", [0, 0, 0], [[]], 3]
    ]) exitWith {
        diag_log("EDALY OVERWRITES: Missing arguments");
        objNull
    };

    private _animal = createAgent [_className, _position, [], 0, "CAN_COLLIDE"];

    _animal setVariable ["BIS_fnc_animalBehaviour_disable", true, true];
    _animal setVariable ["ignoredByAnimals", true, true];
    _animal setBehaviour "CARELESS";
    _animal addEventHandler ["Killed", "_this call EdalyBase_fnc_onAnimalKilled;"];
    _animal addEventHandler ["Hit", "_this call EdalyBase_fnc_onAnimalHit;"];
    _animal addEventHandler ["FiredNear", "_this call EdalyBase_fnc_onAnimalFiredNear;"];
    _animal setDir round(random(360));
    _animal forceSpeed (_animal getSpeed "SLOW");

    _animal;

};
