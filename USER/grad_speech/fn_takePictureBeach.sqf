        
[] spawn {
    {
        _x params ["_audioID"];
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);
    } forEach [
        "mission_01_10_marco",
        "mission_01_09_marco
    ];
};