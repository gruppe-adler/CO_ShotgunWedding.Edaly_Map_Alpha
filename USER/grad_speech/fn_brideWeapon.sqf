
private _index = missionNameSpace getVariable ["grad_gimmegun_index", 0];

private _audioId = [
    "gimmegun_01",
    "gimmegun_02",
    "gimmegun_03",
    "gimmegun_04"
] select (_index min 3);

private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

// systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];

[[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];

missionNameSpace setVariable ["grad_gimmegun_index", _index + 1, true];