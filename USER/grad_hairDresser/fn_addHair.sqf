params ["_bride"];

private _flowers = "FlowerBouquet_01_F" createVehicle [0,0,0];
_flowers attachTo [_bride, [-0.06,-0.12,0.15], "head", true];
_yaw = 0; _pitch = 40; _roll = 0;
_flowers setVectorDirAndUp [
	[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch],
	[[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D
];


private _flowers2 = "FlowerBouquet_01_F" createVehicle [0,0,0];
_flowers2 attachTo [_bride, [-0.06,-0.12,0.15], "head", true];
_yaw = 90; _pitch = 40; _roll = 0;
_flowers2 setVectorDirAndUp [
	[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch],
	[[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D
];


private _flowers3 = "FlowerBouquet_01_F" createVehicle [0,0,0];
_flowers3 attachTo [_bride, [-0.06,-0.12,0.15], "head", true];
_yaw = -90; _pitch = 40; _roll = 0;
_flowers3 setVectorDirAndUp [
	[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch],
	[[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D
];