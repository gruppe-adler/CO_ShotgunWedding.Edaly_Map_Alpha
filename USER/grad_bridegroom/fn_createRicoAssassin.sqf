params ["_position"];

private _unit = (creategroup civilian) createUnit ["C_Man_1", _position, [], 0, "NONE"];

[_unit, "Nikos"] remoteExec ["setFace", 0, true];
_unit setVariable ["grad_isRico", _unit, true];
_unit setBehaviour "CARELESS";
_unit setVariable ["lambs_danger_disableAI", true, true];

missionNameSpace setVariable ["grad_rico", _unit, true];

_unit setUnitLoadout [[["uk3cb_weap_svd_old_pso1m2","","","rhs_acc_pso1m2",["rhs_10Rnd_762x54mmR_7N1",10],[],""],[],[],["U_NikosBody",[]],[],[],"","fsob_Beard03_Light",[],["ItemMap","","","ItemCompass","ItemWatch",""]],false];

[_unit, "Rico"] remoteExec ["setIdentity", 0, _unit];

// make sure only the server handles death reaction
_unit addMPEventHandler ["MPKilled", {
    params ["_unit", "_killer", "_instigator"];
    
    if (local _unit) then {
        [] remoteExec ["grad_bridegroom_fnc_ricosDeathReaction", 2];
    };
}];
