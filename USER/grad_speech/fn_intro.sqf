

[] spawn {
    sleep 10;
    {
        [{
            params ["_audioID"];
            private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
            _object inArea (_audioID);
        },{
            params ["_audioID"];
            private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
            private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
            private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "titles") select 1;
            private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
            
            [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        }, [_x]] call CBA_fnc_waitUntilAndExecute;   
    } forEach [
        "intro_01_isa",
        "intro_02_pilot",
        "intro_03_isa",
        "intro_04_marco",
        "intro_05_isa",
        "intro_06_pilot",
        "intro_07_isa",
        "intro_08_marco",
        "intro_09_isa",
        "intro_10_pilot",
        "intro_11_isa",
        "intro_12_pilot",
        "intro_13_isa",
        "intro_14_marco"
    ];
};
