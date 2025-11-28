params ["_position"];

private _bride = (creategroup civilian) createUnit ["Max_woman5", _position, [], 0, "NONE"];
_bride setVariable ["not_random", true, true];

// dress color
_bride setObjectTextureGlobal [0, "#(rgb,8,8,3)color(1,1,1,1)"];
_bride setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.2,0.05,0.2,1)"];

// hair/head
[_bride, "max_female12"] remoteExec ["setFace", 0, true];


// bride hair decoration
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