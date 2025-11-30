params ["_car"];

_car addAction
[
	"Rico Play Song",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

        [] remoteExec ["grad_bridegroom_fnc_ricoSings", 0];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"driver _target == remoteControlled player && [] call grad_bridegroom_fnc_ricoCanSing",		// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];