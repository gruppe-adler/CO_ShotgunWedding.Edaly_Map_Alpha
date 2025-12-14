// don hector radio

[] spawn {
    {
        _x params ["_audioID"];
        private _duration = getNumber (missionConfigFile >> "CfgSounds" >> _audioID >> "duration");
        private _avatar = getText (missionConfigFile >> "CfgSounds" >> _audioID >> "avatar");
        private _text = getArray (missionConfigFile >> "CfgSounds" >> _audioID >> "customsubtitle") select 1;
        private _object = (getText (missionConfigFile >> "CfgSounds" >> _audioID >> "object"));
        if (_object != "") then {
            _object = call compile _object;
        } else {
            _object = objNull;
        };
        
        [[_object, _text, _audioID, _duration, _avatar], "user\rscMessage\createMessageRsc.sqf"] remoteExec ["bis_fnc_execVM"];
        sleep (_duration + 1);

        if (_audioID == "mission_07_04_donhector") then {
            ["EXTRACTION"] remoteExec ["fnc_handleWeddingPhase", 2];
            [] remoteExec ["grad_mansion_fnc_donHectorAttack", 2];
        };
    } forEach [
        "mission_07_01_donhector",
        "mission_07_02_donhector",
        "mission_07_03_donhector",
        "mission_07_04_donhector"
    ];
};
