
private _audioId = selectRandom [
    "mission_06_01_isa",
    "mission_06_02_isa"
];

private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

// systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];

[[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];

if (["task_survive"] call BIS_fnc_taskState == "ASSIGNED") then {
    [] remoteExec ["grad_speech_fnc_mission6", 2];
};