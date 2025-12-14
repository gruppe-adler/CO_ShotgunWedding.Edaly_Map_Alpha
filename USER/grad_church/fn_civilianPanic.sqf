
    
// Take picture event handler for clients, raises global event for zeus & mission progress
[missionNamespace, "gm_photocamera_takePicture", {

    params ["_player"];

    private _priest = missionNameSpace getVariable ["grad_priest", objNull];
    if (isNull _priest) exitWith {
        diag_log "ERROR: Priest not found!";
    };
    private _bride = missionNameSpace getVariable ["grad_bride", objNull];
    if (isNull _bride) exitWith {
        diag_log "ERROR: Bride not found!";
    };

    private _visibilityPriest = [_player, "VIEW"] checkVisibility [eyePos _player, eyePos _priest];
    private _visibilityBride = [_player, "VIEW"] checkVisibility [eyePos _player, eyePos _bride];
    private _maxAngle = 25;

    // Get vector from observer to target
    private _relDirPriest = (eyePos _player) vectorFromTo (eyePos _priest);
    private _relDirBride = (eyePos _player) vectorFromTo (eyePos _bride);
    // Get the direction the observer is looking (weapon or eyes)
    private _eyeDir = eyeDirection _player;

    // Calculate the dot product (returns a value between -1 and 1)
    private _brideInSight = _relDirBride vectorDotProduct _eyeDir > cos _maxAngle;
    private _priestInSight = _relDirPriest vectorDotProduct _eyeDir > cos _maxAngle;
    
    if (
        _visibilityPriest > 0 && 
        _visibilityBride > 0 && 
        _brideInSight && 
        _priestInSight
    ) then {
        systemchat "Targets are on screen and visible!";  
        ["missionControl_curatorInfo", [_player, "picturetaken", " priest on screen"]] call CBA_fnc_globalEvent;

        // firing position hardcoded for now
        [[2669.3,4203.42,5], _priest] remoteExec ["grad_church_fnc_headshot", 2];
    } else {
        systemChat ("Priest: " + str _visibilityPriest + " Bride: " + str _visibilityBride + " AnglePriest: " + str _priestInSight + " AngleBride: " + str _brideInSight);
        ["missionControl_curatorInfo", [_player, "picturetaken", " priest not on screen"]] call CBA_fnc_globalEvent;
    };
    
}] call BIS_fnc_addScriptedEventHandler;


 
if (!isServer) exitWith {};

["church_headshot", {
    
    // Make civilians panic when they hear gunshots
    {
        if (
            side _x == civilian && 
            position _x inArea "mrk_church_area" &&
            vehicleVarName _x == "" &&
            !isPlayer _x &&
            _x != missionNamespace getVariable ["grad_bride", objNull] &&
            _x != missionNamespace getVariable ["grad_groom", objNull] &&
            _x != missionNamespace getVariable ["grad_priest", objNull]
            ) then {
            [_x] spawn {
                params ["_unit"];
                sleep random 0.5;
                private _act = selectRandom [
                    "Acts_CivilHiding_2", 
                    "Acts_CivilHiding_1", 
                    "Acts_ShockedUnarmed_2_Loop"
                ];
                _unit setFormDir random 360;
                [_unit, _act] remoteExec ["switchMove", 0, true];

                if (random 2 > 1) exitWith {};
                private _sound = str (floor random 11 + 1);
                [_unit, "civpanic_" + _sound] remoteExec ["grad_speech_fnc_civPanic"];
            };
        };
    } forEach allUnits;

}] call CBA_fnc_addEventhandler;

