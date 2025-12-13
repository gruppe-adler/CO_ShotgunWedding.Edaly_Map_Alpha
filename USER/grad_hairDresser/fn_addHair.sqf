params ["_bride"];

private _flowers = "FlowerBouquet_01_F" createVehicle [0,0,0];
_flowers attachTo [_bride, [-0.06,-0.12,0.15], "head", true];
_yaw = 0; _pitch = 40; _roll = 0;
_flowers setVectorDirAndUp [
	[sin _yaw * cos _pitch, cos _yaw * cos _pitch, sin _pitch],
	[[sin _roll, -sin _pitch, cos _roll * cos _pitch], -_yaw] call BIS_fnc_rotateVector2D
];