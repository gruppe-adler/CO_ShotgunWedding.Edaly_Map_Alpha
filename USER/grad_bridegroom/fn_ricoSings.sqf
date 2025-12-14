private _rico = missionNameSpace getVariable ["grad_rico", objNull];

if (isNull _rico) exitWith {};

_rico switchMove "gitaraPlay";

_rico setRandomLip true;

private _soundId = objNull;
if (vehicle player == player) then {
    _soundId = _rico say3d ["rico", 250];
} else {
    _soundId = playSoundUI ["rico"];
};


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

    "GRAD_COMMAND_MESSAGE" cutText ["", "PLAIN"];

}, [_rico, _soundId]] call CBA_fnc_waitUntilAndExecute;




private _text = "Hola soldiers, put down your gun! The wedding is over before it's begun!";
private _duration = 14;

[grad_rico, _text, "", _duration, "user\rscMessage\rico.paa"] execvm "user\rscMessage\createMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "You ride in the armor, so heavy and slow, But you carry a husband who has no fuego!";
private _duration = 14;

[grad_rico, _text, "", _duration, "user\rscMessage\rico.paa"] execvm "user\rscMessage\createMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "Marco has money, he buys you the ice, But he makes love like a bucket of rice!";
private _duration = 10;

[grad_rico, _text, "", _duration, "user\rscMessage\rico.paa"] execvm "user\rscMessage\createMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "Boring and cold! No spice in the bed! Come back to Rico, or shoot me down dead!";
private _duration = 6;

[grad_rico, _text, "", _duration, "user\rscMessage\rico.paa"] execvm "user\rscMessage\createMessageRsc.sqf";

sleep _duration;

if (!alive _rico || lifeState _rico == "INCAPACITATED") exitWith {};

private _text = "Isabella, mi vida, look at this clown, I am the king of this dirty old town!";
private _duration = 16;

[grad_rico, _text, "", _duration, "user\rscMessage\rico.paa"] execvm "user\rscMessage\createMessageRsc.sqf";
