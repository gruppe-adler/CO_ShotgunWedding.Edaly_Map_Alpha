

[] spawn {
    sleep 10;
    [{
        grad_bride inArea ("mission_04_01_marco");
    },{

        {
            params ["_audioID"];
            private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
            private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
            private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "titles") select 1;
            private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
            
            [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
            sleep (_duration + 1);

            ["PHOTO2"] remoteExec ["fnc_handleWeddingPhase", 2];
        } forEach [
            "mission_04_01_marco",
            "mission_04_02_isabella",
            "mission_04_03_marco",
            "mission_04_04_isabella",
            "mission_04_05_marco",
            "mission_04_06_isabella",
            "mission_04_07_marco",
            "mission_04_08_isabella",
            "mission_04_09_isabella",
            "mission_04_10_isabella"
        ];
    }, []] call CBA_fnc_waitUntilAndExecute;
};
