private _audioId = "mission_04b_01_isa";

private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));


[[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
