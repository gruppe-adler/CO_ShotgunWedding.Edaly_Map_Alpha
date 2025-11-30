
private _rico = missionNameSpace getVariable ["grad_rico", objNull];

if (isNull _rico) exitWith { false };

private _canSing = false;

if (alive _rico && {lifeState _rico != "INCAPACITATED"} && {animationState _rico != "gitaraPlay"}) then {
    _canSing = true;
};

_canSing