

[] spawn {
    waitUntil { sleep 1; grad_bride inArea ("mission_04_01_marco") };
    {
        _x params ["_audioID"];
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);

        ["PHOTO2"] remoteExec ["fnc_handleWeddingPhase", 2];
    } forEach [
        "mission_04_01_marco",
        "mission_04_02_isa",
        "mission_04_03_marco",
        "mission_04_04_isa",
        "mission_04_05_marco",
        "mission_04_06_isa",
        "mission_04_07_marco",
        "mission_04_08_isa",
        "mission_04_09_isa",
        "mission_04_10_isa"
    ];
};
