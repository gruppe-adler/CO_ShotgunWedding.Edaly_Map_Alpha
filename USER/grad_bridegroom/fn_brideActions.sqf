params ["_unit"];

/*
-> give weapon
-> curse marco
-> yes / no
-> take a picture
-> to the church
*/

_unit addAction
[
    "<t color='#33FF66'>Yes</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller] spawn grad_speech_fnc_brideYes;     
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

_unit addAction
[
    "<t color='#33FF66'>No</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller] spawn grad_speech_fnc_brideNo;     
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


_unit addAction
[
    "<t color='#FF3333'>Take A Picture!</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller] spawn grad_speech_fnc_brideTakePicture;     
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull]) && ['task_survive'] call BIS_fnc_taskState != 'SUCCEEDED'",
    0,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];


_unit addAction
[
    "<t color='#FF3333'>To the Church!</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller] spawn grad_speech_fnc_brideToChurch;     
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull]) && ['task_survive'] call BIS_fnc_taskState != 'SUCCEEDED'",
    0,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];


_unit addAction
[
    "<t color='#3333FF'>Give me a weapon!</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller] spawn grad_speech_fnc_brideWeapon;     
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull]) && ['task_survive'] call BIS_fnc_taskState == 'SUCCEEDED'",
    0,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];

_unit addAction
[
    "<t color='#3333FF'>Curse Marco</t>",	// title
    {
        params ["_target", "_caller", "_actionId", "_arguments"]; // script
        
        [_caller] spawn grad_speech_fnc_brideCurseMarco;     
    },
    nil,		// arguments
    6,		// priority
    true,		// showWindow
    true,		// hideOnUse
    "",			// shortcut
    "player == (_this getVariable ['BIS_fnc_moduleRemoteControl_owner', objNull]) && ['task_survive'] call BIS_fnc_taskState == 'SUCCEEDED'",
    0,			// radius
    false,		// unconscious
    "",			// selection
    ""			// memoryPoint
];