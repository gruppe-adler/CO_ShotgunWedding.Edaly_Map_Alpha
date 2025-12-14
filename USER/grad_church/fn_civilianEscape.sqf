if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

sleep 2;

private _grp1 = createGroup civilian;
{
	[_x, ""] remoteExec ["switchMove", _x];
	[_x] joinSilent _grp1;

	private _sound = str (floor random 11 + 1);
	[_x, "civpanic_" + _sound] remoteExec ["grad_speech_fnc_civPanic"];
	sleep random 1;
} forEach [GRAD_SW_churchEscapeCivilian_1_Car_1, GRAD_SW_churchEscapeCivilian_2_Car_1, GRAD_SW_churchEscapeCivilian_3_Car_1, GRAD_SW_churchEscapeCivilian_4_Car_1];

private _wp1 = [_grp1, GRAD_SW_churchEscapeCar_1, -1, "GETIN", "COMBAT", "RED", "FULL"] call CBA_fnc_addWaypoint;
_wp1 waypointAttachVehicle GRAD_SW_churchEscapeCar_1;

private _grp2 = createGroup civilian;
{
	[_x, ""] remoteExec ["switchMove", _x];
	[_x] joinSilent _grp2;
	private _sound = str (floor random 11 + 1);
	[_x, "civpanic_" + _sound] remoteExec ["grad_speech_fnc_civPanic"];
	sleep random 1;
} forEach [GRAD_SW_churchEscapeCivilian_1_Car_2, GRAD_SW_churchEscapeCivilian_2_Car_2, GRAD_SW_churchEscapeCivilian_3_Car_2, GRAD_SW_churchEscapeCivilian_4_Car_2];

private _wp2 = [_grp2, GRAD_SW_churchEscapeCar_2, -1, "GETIN", "COMBAT", "RED", "FULL"] call CBA_fnc_addWaypoint;
_wp2 waypointAttachVehicle GRAD_SW_churchEscapeCar_2;

[
	{
		params ["_grp", "_car"];

		private _units = units _grp;
		private _inCar = _units select { _x in _car };
		systemChat format["inCar: %1 | units: %2", _inCar, _units];
		(count _inCar) == (count _units)
	},
	{
		params ["_grp", "_car"];

		private _startMarkerNumber = 1;
		private _finishMarkerNumber = 86;
		private _path = [];
		for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
		private _marker = call(compile format ["GRAD_SW_escapePath1_%1",_i]);
			private _pos = getPos _marker;
			_pos pushBack (_marker getVariable ["GRAD_SW_speed", 20]);
			_path pushBack _pos;
		};

		[
			{
				params ["_car", "_path"];
				_car setDriveOnPath _path;
			},
			[_car, _path],
			1
		] call CBA_fnc_waitAndExecute;
	},
	[_grp1, GRAD_SW_churchEscapeCar_1]
] call CBA_fnc_waitUntilAndExecute;

[
	{
		params ["_grp", "_car"];

		private _units = units _grp;
		private _inCar = _units select { _x in _car };
		systemChat format["inCar: %1 | units: %2", _inCar, _units];
		(count _inCar) == (count _units)
	},
	{
		params ["_grp", "_car"];

		private _startMarkerNumber = 2;
		private _finishMarkerNumber = 86;
		private _path = [];
		for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
		private _marker = call(compile format ["GRAD_SW_escapePath1_%1",_i]);
			private _pos = getPos _marker;
			_pos pushBack (_marker getVariable ["GRAD_SW_speed", 20]);
			_path pushBack _pos;
		};

		[
			{
				params ["_car", "_path"];
				_car setDriveOnPath _path;
			},
			[_car, _path],
			1
		] call CBA_fnc_waitAndExecute;
	},
	[_grp2, GRAD_SW_churchEscapeCar_2]
] call CBA_fnc_waitUntilAndExecute;

// Delete Cars

[
	{
		params ["_grp1", "_grp2", "_car1", "_car2", "_marker"];

		private _area = [GRAD_SW_escapePath1_86, 75, 75, 0, false, -1];
		(_car1 inArea _area) || (_car2 inArea _area)
	},
	{
		params ["_grp1", "_grp2", "_car1", "_car2", "_marker"];

		{
			deleteVehicle _x;			
		} forEach (units _grp1) + (units _grp2) + [_car1, _car2];
	},
	[_grp1, _grp2, GRAD_SW_churchEscapeCar_1, GRAD_SW_churchEscapeCar_2, GRAD_SW_escapePath1_86]
] call CBA_fnc_waitUntilAndExecute;
