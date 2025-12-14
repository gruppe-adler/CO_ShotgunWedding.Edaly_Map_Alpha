params ["_position"];

private _bride = (creategroup civilian) createUnit ["Max_woman5", _position, [], 0, "NONE"];
_bride setVariable ["not_random", true, true];
_bride setBehaviour "CARELESS";
(group _bride) setBehaviourStrong "CARELESS";
_bride setCombatMode "BLUE";
_bride setSpeedMode "LIMITED";

_bride setVariable ["lambs_danger_disableAI", true, true];

missionNameSpace setVariable ["grad_bride", _bride, true];



// dress color
_bride setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,1,1,1)"];
_bride setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.2,0.05,0.2,1)"];

// hair/head
// [_bride, "max_female12"] remoteExec ["setFace", 0, true];

[{
	params ["_bride"];
	[_bride, "Isabella"] remoteExec ["setIdentity", 0, _bride];
}, [_bride], 5] call CBA_fnc_waitAndExecute;


_bride assignAsCargoIndex [grad_couplevehicle, 4];

[_bride, ["Local", {
    params ["_unit", "_isLocal"];
    
    // Only run if the unit just became local to THIS machine
    if (local _unit) then {
        // Check our variable to see if god mode is required
        if (_unit getVariable ["bride_vulnerable", false]) then {
            _unit allowDamage true;
        } else {
			_unit allowDamage false;
		};
    };
}]] remoteExec ["addEventHandler", 0, true];

_bride allowDamage false;

[_bride] remoteExec ["grad_bridegroom_fnc_brideActions", 0, _bride];

_bride

// bride hair decoration
/*
private _flowers = "FlowerBouquet_01_F" createVehicle [0,0,0];
_flowers attachTo [_bride, [-0.06,-0.12,0.15], "head", true];
_yaw = 0; _pitch = 40; _roll = 0;
_flowers setVectorDirAndUp [
	[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch],
	[[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D
];


// puke
private _puke = "Land_Edaly_Item_Copper_Ore" createVehicle [0,0,0];
_puke attachTo [_bride, [0,0.09,0.05], "spine3", true];

*/