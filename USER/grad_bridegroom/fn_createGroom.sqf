params ["_position"];

private _groom = (creategroup civilian) createUnit ["C_Man_1", _position, [], 0, "NONE"];

// [_groom, "RussianHead_1"] remoteExec ["setFace", 0, true];

missionNameSpace setVariable ["grad_groom", _groom, true];

_groom setBehaviour "CARELESS";
(group _groom) setBehaviourStrong "CARELESS";
_groom setCombatMode "BLUE";
_groom setVariable ["lambs_danger_disableAI", true, true];

_groom setUnitLoadout  [[],[],[],["U_C_FormalSuit_01_blue_F",[]],[],[],"H_StrawHat","Edaly_Cigar_01_F",[],["ItemMap","","","ItemCompass","ItemWatch","fsob_Beard02_Brown_nvg"]],[];

[{
	params ["_groom"];
	[_groom, "Marco"] remoteExec ["setIdentity", 0, _groom];
}, [_groom], 5] call CBA_fnc_waitAndExecute;

_groom assignAsCargoIndex [grad_couplevehicle, 2];

_groom