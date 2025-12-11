params ["_unit"];


[{
	params ["_unit"];
	[_unit, "Priest"] remoteExec ["setIdentity", 0, _unit];
}, [_unit], 5] call CBA_fnc_waitAndExecute;
