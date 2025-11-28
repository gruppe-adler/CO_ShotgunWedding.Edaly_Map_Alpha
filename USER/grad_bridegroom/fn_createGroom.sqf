params ["_position"];

private _groom = (creategroup civilian) createUnit ["C_Man_formal_3_F", _position, [],
     0, "NONE"];

[_groom, "RussianHead_1"] remoteExec ["setFace", 0, true];

_groom setUnitLoadout  [[],[],[],["U_C_FormalSuit_01_blue_F",[]],[],[],"H_StrawHat","Edaly_Cigar_01_F",[],["ItemMap","","","ItemCompass","ItemWatch","fsob_Beard02_Brown_nvg"]],[];
