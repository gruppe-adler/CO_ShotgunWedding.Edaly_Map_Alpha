params ["_positionASL", "_unit"];

if (!alive _unit) exitWith {};

// 1. Play Impact Sound
// Plays a flesh impact sound at the unit's head position
playSound3D ["A3\Sounds_F\arsenal\sfx\bullet_hits\body_01.wss", _unit, false, getPosASL _unit, 1, 1, 50];

playSound3D ["A3\Sounds_F_Mark\arsenal\weapons\longrangerifles\dmr_02_mar10\dmr02_midshot_02.wss", objNull, false, _positionASL];
playSound3D ["A3\Sounds_F_Mark\arsenal\weapons\longrangerifles\dmr_02_mar10\dmr02_tail_meadows.wss", objNull, false, _positionASL];

// 3. The Kill
// Force damage to the head hitpoint
_unit setHitPointDamage ["HitHead", 1];

private _blood = "BloodSplatter_01_Large_New_F" createVehicle [0,0,0];
_blood setPos getPos _unit;

[_unit] remoteExec ["grad_church_fnc_headshotFX", 0];

["church_headshot", []] call CBA_fnc_globalEvent;