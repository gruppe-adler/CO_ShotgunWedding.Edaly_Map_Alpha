

[] spawn {
    waitUntil { sleep 1; grad_bride inArea ("mission_01_01_marco") };
    {
        _x params ["_audioID"];
        
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

        systemchat format ["Playing audio ID: %1 - duration %2 - avatar %3 - text %4", _audioID, _duration, _avatar, _text];
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);

        ["PHOTO1"] remoteExec ["fnc_handleWeddingPhase", 2];
    } forEach [
        "mission_01_01_marco",
        "mission_01_02_isa",
        "mission_01_03_marco",
        "mission_01_04_isa",
        "mission_01_05_marco",
        "mission_01_06_isa",
        "mission_01_07_marco",
        "mission_01_08_isa",
        "mission_01_09_marco",
        "mission_01_10_marco"
    ];
};
