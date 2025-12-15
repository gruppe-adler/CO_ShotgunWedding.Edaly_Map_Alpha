
params ["_position"];

private _unit = (creategroup civilian) createUnit ["C_Man_1", _position, [], 0, "NONE"];

[_unit, "Nikos"] remoteExec ["setFace", 0, true];
_unit setVariable ["grad_isRico", _unit, true];
_unit setBehaviour "CARELESS";
_unit setVariable ["lambs_danger_disableAI", true, true];

missionNameSpace setVariable ["grad_rico", _unit, true];

_unit setUnitLoadout [[["USSR_GuitarA","","","",[],[],""],[],[],["U_NikosBody",[]],[],[],"","fsob_Beard03_Light",[],["ItemMap","","","ItemCompass","ItemWatch",""]],false];

[_unit, "gitaraP"] remoteExec ["switchMove", 0, true];

[_unit, "Rico"] remoteExec ["setIdentity", 0, _unit];

_unit addEventHandler ["Dammaged", {
	params ["_unit", "_hitSelection", "_damage", "_hitPartIndex", "_hitPoint", "_shooter", "_projectile"];

    _unit switchMove "";
    detach _unit;
    
}];

// make sure only the server handles death reaction
_unit addMPEventHandler ["MPKilled", {
    params ["_unit", "_killer", "_instigator"];

        if (local _unit) then {
            [] remoteExec ["grad_bridegroom_fnc_ricosDeathReaction", 2];
        };
}];

[_unit] remoteExec ["grad_bridegroom_fnc_ricoActions", 0, _unit];

_unit