

private _curseIndex = missionNameSpace getVariable ["grad_curses", 0];

private _audioId = [
    "mission_06b_01_isa",
    "mission_06b_02_isa",
    "mission_06b_03_isa",
    "mission_06b_04_isa",
    "mission_06b_05_isa",
    "mission_06b_06_isa"
] select _curseIndex;

private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

// systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];

[[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];

sleep (_duration + 1);


private _audioId = [
    "mission_06b_01_marco",
    "mission_06b_02_marco",
    "mission_06b_03_marco",
    "mission_06b_04_marco",
    "mission_06b_05_marco",
    "mission_06b_06_marco"
] select _curseIndex;

private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

// systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];
if (alive grad_groom && lifeState grad_groom != "INCAPACITATED") then {
    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
};

if (_curseIndex < 5) then {
    missionNameSpace setVariable ["grad_curses", _curseIndex + 1, true];
} else {
    missionNameSpace setVariable ["grad_curses", 0, true];
};