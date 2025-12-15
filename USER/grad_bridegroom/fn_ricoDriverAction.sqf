params ["_unit"];

_unit addAction
[
    "<t color='#33FF66'>Rico Guitar Song</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [] remoteExec ["grad_bridegroom_fnc_ricoSings", 0];
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "vehicle _this != _this && player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull])",
    0,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];
