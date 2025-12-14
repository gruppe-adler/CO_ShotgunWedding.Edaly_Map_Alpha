

[] spawn {
    waitUntil { sleep 1; grad_bride inArea ("mission_02_01_marco") };
    {
        _x params ["_audioID"];
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);

        ["BANK"] remoteExec ["fnc_handleWeddingPhase", 2];
    } forEach [
        "mission_02_01_marco",
        "mission_02_02_isa",
        "mission_02_03_marco",
        "mission_02_04_isa",
        "mission_02_05_marco",
        "mission_02_06_isa",
        "mission_02_07_marco",
        "mission_02_08_isa",
        "mission_02_09_marco"
    ];
};
