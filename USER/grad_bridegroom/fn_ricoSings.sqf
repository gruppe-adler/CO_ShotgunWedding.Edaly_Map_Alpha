private _rico = missionNameSpace getVariable ["grad_rico", objNull];

if (isNull _rico) exitWith {};

_rico switchMove "gitaraPlay";

_rico setRandomLip true;
private _soundId = _rico say3d ["rico", 250];

[{
    params ["_rico", "_soundId"];
    !alive _rico || lifeState _rico == "INCAPACITATED" || animationState _rico != "gitaraPlay" || isNull _soundId
},{
    params ["_rico", "_soundId"];

    _rico setRandomLip false;

    if (alive _rico && {lifeState _rico != "INCAPACITATED"}) then {
        _rico switchMove "gitaraP";
    } else {
        _rico switchMove "";
    };

    if (!isNull _soundId) then {
        deleteVehicle _soundId;
    };

}, [_rico, _soundId]] call CBA_fnc_waitUntilAndExecute;