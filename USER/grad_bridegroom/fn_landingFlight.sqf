private _plane = createVehicle ["UK3CB_MEC_C_C400", [0,0,100], [], 0, "NONE"];
_plane allowDamage false;
_plane call UK3CB_Factions_Vehicles_fnc_disable_randomize;

private _pilot = (createGroup civilian) createUnit ["UK3CB_CHC_C_PILOT", [0,100,100], [], 0, "NONE"];
_pilot setUnitLoadout [[[],[],[],["UK3CB_ADC_C_U_Pilot_01",[]],[],[],"H_HeadSet_red_F","G_Aviator",[],["","","","","ItemWatch",""]],false];

(group _pilot) setBehaviourStrong "CARELESS";
_pilot setCombatMode "BLUE";

[_pilot, "WhiteHead_05"] remoteExec ["setFace", 0, true];

missionNameSpace setVariable ["grad_pilot", _pilot, true];

[_pilot, "Pilot"] remoteExec ["setIdentity", 0, _pilot];

_pilot moveInDriver _plane;

[
	_plane,
	["BLUE",1], 
	true
] call BIS_fnc_initVehicle;


_plane engineOn true;
_plane setPilotLight true;

private _data = call grad_bridegroom_fnc_landingFlightData;
[_plane, _data, [_plane, "landingDone"], true, [], [], 1] spawn BIS_fnc_unitPlay;


private _bride = [[0,-100,100]] call grad_bridegroom_fnc_createBride;
private _groom = [[0,-200,100]] call grad_bridegroom_fnc_createGroom;
_bride moveInCargo _plane;
_groom moveInCargo _plane;


[{
    params ["_plane"];

    _plane engineOn true;
    
}, [_plane], 5] call CBA_fnc_waitAndExecute;


[_plane] remoteExec ["grad_speech_fnc_intro", 2];

[{
    params ["_plane"];
    _plane getVariable ["landingDone", false]
},{
    params ["_plane"];
    _plane engineOn false;

    { (_x select 0) leaveVehicle _plane; } forEach fullCrew _plane;


    grad_groom setSpeedMode "LIMITED";
    grad_bride setSpeedMode "LIMITED";

    grad_groom assignAsCargoIndex [grad_couplevehicle, 2];
    grad_bride assignAsCargoIndex [grad_couplevehicle, 4];
    [grad_bride, grad_groom] orderGetIn true;

    grad_pilot setSpeedMode "LIMITED";
    grad_pilot moveTo [4472.41,1775.26,0];

    _plane engineOn false;
    missionNameSpace setVariable ["grad_landingDone", true, true];
}, [_plane]] call CBA_fnc_waitUntilAndExecute;

/*
door_r_open["mfd_on",
"avionics_damage",
"mfd_horizon_virtual_base_rotate",
"mfd_horizon_virtual_base_dive",
"mfd_horizon_virtual_pip_1_damagehide",
"mfd_horizon_virtual_pip_2_damagehide",
"mfd_compass_pilot_rotate",
"mfd_roll_indicator_pilot_rotate",
"mfd_compass_copilot_rotate",
"mfd_roll_indicator_copilot_rotate",
"mfd_center_flaps_up_0",
"mfd_center_flaps_landing_1",
"mfd_center_flaps_landing_1_2",
"mfd_center_flaps_takeoff",
"mfd_center_needle_fuel_l",
"mfd_center_needle_fuel_r",
"mfd_center_needle_oil_psi",
"mfd_center_needle_oil_temp",
"mfd_center_needle_rpm",
"mfd_center_needle_rpm_throttle",
"cabin_throttle_move",
"cabin_console_top_compass_rotate",
"cabin_console_top_compass_backlit_rotate",
"wheel_front",
"wheel_left",
"wheel_right",
"gear_1_damper_move",
"gear_2_damper_move",
"gear_3_damper_move",
"flap_l",
"flap_r",
"aileron_r",
"aileron_r_brake",
"aileron_l",
"aileron_l_brake",
"elevator_l",
"elevator_r",
"rudder",
"propeler",
"door_r_open",
"door_l_open",
"door_l_hydraulic_1",
"door_l_hydraulic_2",
"door_r_hydraulic_1",
"door_r_hydraulic_2",
"cabin_stick_pilot_bank",
"cabin_stick_pilot_dive",
"cabin_stick_copilot_bank",
"cabin_stick_copilot_dive",
"cabin_pedals_pilot_l",
"cabin_pedals_pilot_r",
"cabin_pedals_copilot_l",
"cabin_pedals_copilot_r",
"wing_left_light_volumetric_hide",
"wing_right_light_volumetric_hide",
"hull_lights_coll_on",
"hull_lights_coll_on_white_1_blinking",
"hull_lights_coll_on_white_2_blinking",
"glass1_damagehide",
"glass2_damagehide",
"glass3_damagehide",
"glass4_damagehide",
"glass5_damagehide"]

*/