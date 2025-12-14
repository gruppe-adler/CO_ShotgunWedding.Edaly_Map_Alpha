

[] spawn {
    waitUntil { sleep 1; grad_bride inArea ("mission_03_01_marco") };
    {
        _x params ["_audioID"];
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);

        ["HAIR"] remoteExec ["fnc_handleWeddingPhase", 2];
    } forEach [
        "mission_03_01_marco",
        "mission_03_02_isa",
        "mission_03_03_marco",
        "mission_03_04_isa",
        "mission_03_05_marco",
        "mission_03_06_isa",
        "mission_03_07_marco",
        "mission_03_08_isa",
        "mission_03_09_marco"
    ];
};
