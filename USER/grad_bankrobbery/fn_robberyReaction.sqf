
{
    _x params ["_audioID"];
    
    private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
    private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
    private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
    private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

    // systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];
    
    [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
    sleep (_duration + 1);
} forEach [
    "mission_02b_01_isa",
    "mission_02b_02_marco",
    "mission_02b_03_isa"
];
