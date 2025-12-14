params ["_car"];

if (!isServer) exitWith {};

{
    _x params ["_classname", "_position", "_orientation"];

     private _deko = createSimpleObject [_classname, [0,0,0], false];
    _deko attachTo [_car, _position, "", true];
    _deko setVectorDirAndUp _orientation;
    
    if (_classname == "MemorialWreath_01_F") then {
        _deko setObjectScale 0.5;
    };
} forEach
[
    ["MemorialWreath_01_F",[0.0476074,1.70117,-0.0362091],[[-0.0167138,-0.0768781,-0.9969],[0.0492804,-0.995891,0.0759741]]],
    ["FlowerBouquet_01_F",[0.741943,0.837402,-0.0253448],[[0.942381,-0.33239,-0.0378927],[0.0433927,0.00913678,0.999016]]],
    ["FlowerBouquet_01_F",[-0.740479,0.92041,-0.0375366],[[-0.977426,0.193558,-0.0846994],[-0.0418569,0.215545,0.975596]]]
];

_car allowDamage false;
[_car, ["Local", {
    params ["_vehicle", "_isLocal"];
    
    // Only run if the unit just became local to THIS machine
    if (local _vehicle) then {
        // Check our variable to see if god mode is required
        if (_vehicle getVariable ["car_vulnerable", false]) then {
            _vehicle allowDamage true;
        } else {
			_vehicle allowDamage false;
		};
    };
}]] remoteExec ["addEventHandler", 0, true];


// speed check
[{
    params ["_args", "_handle"];
    _args params ["_car"];

    private _cooldown = missionNameSpace getVariable ["grad_carspeed_cooldown", -1];
    missionNameSpace setVariable ["grad_carspeed_cooldown", _cooldown + 1, true];

    if (speed _car > 40 && _cooldown > 10) then {
        if (!isNil "grad_bride" && {grad_bride in crew _car} && {alive grad_bride}) then {
            // [grad_bride] call grad_speech_fnc_convoySpeed;

            ["speeding_limit", []] call CBA_fnc_globalEvent;
            missionNameSpace setVariable ["grad_carspeed_cooldown", -1, true];
        };
    };

}, 1, [_car]] call CBA_fnc_addPerFrameHandler;