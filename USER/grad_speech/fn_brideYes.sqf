
// todo add sounds
private _audioId = selectRandom [
    "bride_yes_01",
    "bride_yes_02",
    "bride_yes_03",
    "bride_yes_04",
    "bride_yes_05",
    "bride_yes_06"
];

private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

// systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];

[[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];