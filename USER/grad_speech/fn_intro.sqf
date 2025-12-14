
params ["_plane"];

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
            private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
            private _object = call compile (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));

            if (_audioID == "intro_08_marco") then {
                ["music_intro"] remoteExec ["playsound", 0];
                [grad_pilot] remoteExec ["grad_speech_fnc_introLocal", 0];
            };
            
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
        "intro_09a_isa",
        "intro_10_pilot",
        "intro_11_isa",
        "intro_12_pilot",
        "intro_13_isa",
        "intro_14_marco"
    ];
};

// START TASK 1
[{
    missionNameSpace getVariable ["grad_landingDone", false]
},{
    ["START"] remoteExec ["fnc_handleWeddingPhase", 2];

    // todo maybe start one after the other completed? but trigger area should also make sure no overlap happens
    [] remoteExec ["grad_speech_fnc_mission1", 2];
    [] remoteExec ["grad_speech_fnc_mission2", 2];
    [] remoteExec ["grad_speech_fnc_mission3", 2];
    [] remoteExec ["grad_speech_fnc_mission4", 2];
}] call CBA_fnc_waitUntilAndExecute;
