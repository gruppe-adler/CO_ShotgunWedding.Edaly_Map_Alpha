if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

{
	_x enableSimulationGlobal true;
	_x hideObjectGlobal false;
} forEach [donhector_heli1, donhector_heli2, donhector_heli3];



[{
    params ["_args", "_handle"];
    _args params ["_heli1", "_heli2", "_heli3"];

    {
        private _currenteheli = _x;
        private _group = group _currenteheli;
        { deleteWaypoint _x } forEachReversed waypoints _group;

        private _radius = random 200 + 100;

        private _target = selectRandom ((PlayableUnits + switchableunits) select { isNull (getAssignedCuratorLogic _x) });

        private _wp = _group addWaypoint [getPos _target, 0];
        _wp setWaypointType "LOITER";
        _wp setWaypointLoiterType "CIRCLE"; // Options: "CIRCLE" or "CIRCLE_L"
        _wp setWaypointLoiterRadius _radius;
        _wp setWaypointBehaviour "COMBAT";     // "COMBAT" keeps them focused, "CARELESS" ignores enemies
        _wp setWaypointCombatMode "RED";   // Open fire on enemies

        _currenteheli flyInHeight [50, true];

    } forEach [_heli1, _heli2, _heli3];

}, 15, [donhector_heli1, donhector_heli2, donhector_heli3]] call CBA_fnc_addPerFrameHandler;
