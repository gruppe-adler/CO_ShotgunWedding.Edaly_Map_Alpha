params ["_unit"];

_unit addAction
[
    "<t color='#33FF66'>Sing a capella</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller, "rico_a_capella"] remoteExec ["say3D", 0];
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull])",
    0,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];
