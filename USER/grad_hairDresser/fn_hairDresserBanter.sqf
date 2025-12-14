
private _index = missionNameSpace getVariable ["grad_hairDresser_banterIndex", 0];

private _audioID = ["mission_03b_01_isa", "mission_03b_02_isa", "mission_03b_03_isa"] select (_index min 2);
private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

// systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];

[[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];

missionNameSpace setVariable ["grad_hairDresser_banterIndex", _index + 1, true];