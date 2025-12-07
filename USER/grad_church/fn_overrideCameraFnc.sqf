
GM_CORE_WEAPONS_fnc_photocamera_takePicture = {

    // safety switch for users to turn feature off
    // if (missionNameSpace getVariable ["gm_photocamera_feature_disabled", false]) exitWith {};

    private _maxDelay = 0.5;

    if ((missionNameSpace getVariable ["gm_photocamera_lastpic", -_maxDelay]) + _maxDelay > time) exitWith {};

    [] spawn
    {
        [player, "gm_photocamera_shutter"] remoteExec ["say3D", 0, false];
        ("gm_camera_shutter" call BIS_fnc_rscLayer) cutText ["", "BLACK OUT", 0.1];
        missionNameSpace setVariable ["gm_photocamera_lastpic", time]; // set up 1.5s timeout
        uisleep 0.1;
        [missionNamespace, "gm_photocamera_takePicture", [player]] call BIS_fnc_callScriptedEventHandler;
        ("gm_camera_shutter" call BIS_fnc_rscLayer) cutText ["", "PLAIN"];

    };

};

