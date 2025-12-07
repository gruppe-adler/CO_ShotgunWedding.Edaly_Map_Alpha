params ["_vehicle"];

if (!local _vehicle) exitWith {};

{
    _x params ["_doorIndex"];

    _vehicle animateDoor [_doorIndex, 1, true];
} forEach
[
    "Door_LB",
    "Door_RB",
    "Door_LF",
    "Door_RF"
];
