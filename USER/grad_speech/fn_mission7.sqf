// don hector radio

[] spawn {
    {
        _x params ["_audioID"];
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);

        ["EXTRACTION"] remoteExec ["fnc_handleWeddingPhase", 2];
    } forEach [
        "mission_07_01_donhector",
        "mission_07_02_donhector",
        "mission_07_03_donhector",
        "mission_07_04_donhector"
    ];
};
