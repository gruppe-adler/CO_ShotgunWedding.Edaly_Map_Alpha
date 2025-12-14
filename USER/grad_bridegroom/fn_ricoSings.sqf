private _rico = missionNameSpace getVariable ["grad_rico", objNull];

if (isNull _rico) exitWith {};

_rico switchMove "gitaraPlay";

_rico setRandomLip true;
private _soundId = _rico say3d ["rico", 250];
private _soundId2 = playSoundUI ["rico"];


[{
    params ["_rico", "_soundId", "_soundId2"];
    !alive _rico || lifeState _rico == "INCAPACITATED" || animationState _rico != "gitaraPlay" || isNull _soundId || isNull _soundId2
},{
    params ["_rico", "_soundId", "_soundId2"];

    _rico setRandomLip false;

    if (alive _rico && {lifeState _rico != "INCAPACITATED"}) then {
        _rico switchMove "gitaraP";
    } else {
        _rico switchMove "";
    };

    if (!isNull _soundId) then {
        deleteVehicle _soundId;
    };

    if (!isNull _soundId2) then {
        deleteVehicle _soundId2;
    };

    "GRAD_COMMAND_MESSAGE" cutText ["", "PLAIN"];

}, [_rico, _soundId, _soundId2]] call CBA_fnc_waitUntilAndExecute;




private _text = "Hola soldiers, put down your gun! The wedding is over before it’s begun!";
private _avatar = "user\rscMessage\rico.paa";
private _duration = 14;

[grad_rico, _text, _duration, _avatar] execvm "user\rscMessage\createRscMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "You ride in the armor, so heavy and slow, But you carry a husband who has no fuego!";
private _avatar = "user\rscMessage\rico.paa";
private _duration = 14;

[grad_rico, _text, _duration, _avatar] execvm "user\rscMessage\createRscMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "Marco has money, he buys you the ice, But he makes love like a bucket of rice!";
private _avatar = "user\rscMessage\rico.paa";
private _duration = 10;

[grad_rico, _text, _duration, _avatar] execvm "user\rscMessage\createRscMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "Boring and cold! No spice in the bed! Come back to Rico, or shoot me down dead!";
private _avatar = "user\rscMessage\rico.paa";
private _duration = 6;

[grad_rico, _text, _duration, _avatar] execvm "user\rscMessage\createRscMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "Isabella, mi vida, look at this clown, I am the king of this dirty old town!";
private _avatar = "user\rscMessage\rico.paa";
private _duration = 16;

[grad_rico, _text, _duration, _avatar] execvm "user\rscMessage\createRscMessageRsc.sqf";
