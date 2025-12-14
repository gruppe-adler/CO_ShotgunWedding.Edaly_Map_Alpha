params ["_unit", "_sound"];

_unit say3d [_sound, 150];
_unit setRandomLip true;

[{
    params ["_unit"];
    _unit setRandomLip false;
}, [_unit], 3] call CBA_fnc_waitAndExecute;
