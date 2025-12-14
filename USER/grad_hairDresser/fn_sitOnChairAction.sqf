params ["_object"];

_object addAction
    [
        "<t color='#FF33FF'>Sit Down</t>",	// title
        {
            params ["_target", "_caller", "_actionId", "_arguments"]; // script
            
            _caller setPos getPos _target;
            _caller setFormDir (getDir _target - 180);
            [_caller, "ace_sitting_HubSittingChairA_idle1"] remoteExec ["switchMove", 0];

        },
        nil,		// arguments
        6,		// priority
        true,		// showWindow
        true,		// hideOnUse
        "",			// shortcut
        "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull]) && isNull (attachedTo _this) &&['task_survive'] call BIS_fnc_taskState != 'SUCCEEDED'",
        0,			// radius
        false,		// unconscious
        "",			// selection
        ""			// memoryPoint
    ];

_object addAction
    [
        "<t color='#FF33FF'>Stand up</t>",	// title
        {
            params ["_target", "_caller", "_actionId", "_arguments"]; // script
            
            detach _caller;
            [_caller, ""] remoteExec ["switchMove", 0];

        },
        nil,		// arguments
        6,		// priority
        true,		// showWindow
        true,		// hideOnUse
        "",			// shortcut
        "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull]) && !isNull (attachedTo _this) && ['task_survive'] call BIS_fnc_taskState != 'SUCCEEDED'",
        0,			// radius
        false,		// unconscious
        "",			// selection
        ""			// memoryPoint
    ];