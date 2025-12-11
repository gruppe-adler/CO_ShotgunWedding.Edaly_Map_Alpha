if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

// LMG Pickup
private _startMarkerNumber = 1;
private _finishMarkerNumber = 26;
private _commonPath = [];
for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
private _marker = call(compile format ["GRAD_SW_drivePath_%1",_i]);
	private _pos = getPos _marker;
	_pos pushBack (_marker getVariable ["GRAD_SW_speed", 40]);
	_commonPath pushBack _pos;
};

private _path1 = + _commonPath;
_startMarkerNumber = 27;
_finishMarkerNumber = 29;
for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
private _marker = call(compile format ["GRAD_SW_drivePath_%1",_i]);
	private _pos = getPos _marker;
	_pos pushBack (_marker getVariable ["GRAD_SW_speed", 40]);
	_path1 pushBack _pos;
};

private _path2 = + _commonPath;
_startMarkerNumber = 1;
_finishMarkerNumber = 10;
for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
private _marker = call(compile format ["GRAD_SW_drivePath2_%1",_i]);
	private _pos = getPos _marker;
	_pos pushBack (_marker getVariable ["GRAD_SW_speed", 40]);
	_path2 pushBack _pos;
};

{
	_x enableSimulationGlobal true;
	_x hideObjectGlobal false;
} forEach [GRAD_SW_HairDresserPickup, GRAD_SW_HairDresserHilux, GRAD_SW_HairDresserVolga_1, GRAD_SW_HairDresserVolga_2];

GRAD_SW_HairDresserPickup setDriveOnPath _path1;
GRAD_SW_HairDresserHilux setDriveOnPath _path2;
