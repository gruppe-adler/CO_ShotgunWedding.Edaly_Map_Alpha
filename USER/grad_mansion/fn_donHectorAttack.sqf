if (!isServer || !canSuspend) exitWith { _this remoteExec [_fnc_scriptName, 2]; };

{
	_x enableSimulationGlobal true;
	_x hideObjectGlobal false;
    
    {
        _x enableSimulationGlobal true;
	    _x hideObjectGlobal false;
    } forEach crew _x;
} forEach [donhector_heli1, donhector_heli2, donhector_heli3];

{
	_x enableSimulationGlobal true;
	_x hideObjectGlobal false;

    {
        _x enableSimulationGlobal true;
	    _x hideObjectGlobal false;
    } forEach crew _x;
} forEach [donhector_landvehicle1, donhector_landvehicle2];

[{
    params ["_args", "_handle"];
    _args params ["_heli1", "_heli2"];

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

    } forEach [_heli1, _heli2];

}, 15, [donhector_heli1, donhector_heli2]] call CBA_fnc_addPerFrameHandler;


private _data = call grad_mansion_fnc_flightDataHeli;
[donhector_heli3, _data, [donhector_heli3, "approach_done"]] spawn BIS_fnc_unitPlay;
donhector_heli3 engineOn true;

[{
    params ["_heli"];
    _heli getVariable ["approach_done", false]
},{
    params ["_heli"];

    private _altitude = getPos _heli select 2;
    _heli flyInHeight [_altitude, true];

    [_heli] call ace_fastroping_fnc_deployAI;
    [_heli] spawn {
        params ["_heli"];
        waitUntil { sleep 1; (count fullCrew [_heli, 'cargo', false]) == 0 };
        sleep 5;
        
        // Cut ropes so the heli can leave
        [_heli] call ace_fastroping_fnc_cutRopes;

        _heli moveTo [0,0,100];
        _heli flyInHeight [150, true];
    };

    
    // private _wp = (group _heli) addWaypoint [position _heli, 0] setWaypointType "FASTROPE";
    // _wp setWaypointScript "\x\zen\addons\compat_ace\functions\fnc_waypointFastrope.sqf";

}, [donhector_heli3]] call CBA_fnc_waitUntilAndExecute;



[{
    
    private _path1 = [];
    _startMarkerNumber = 1;
    _finishMarkerNumber = 34;
    for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
    private _marker = call(compile format ["GRAD_hector_vehicle1_path_%1",_i]);
        private _pos = getPos _marker;
        _pos pushBack (_marker getVariable ["GRAD_SW_speed", 70]);
        _path1 pushBack _pos;
    };
    donhector_landvehicle1 setDriveOnPath _path1;

    private _path2 = [];
    _startMarkerNumber = 1;
    _finishMarkerNumber = 81;
    for "_i" from _startMarkerNumber to _finishMarkerNumber do  {  
    private _marker = call(compile format ["GRAD_hector_vehicle2_path_%1",_i]);
        private _pos = getPos _marker;
        _pos pushBack (_marker getVariable ["GRAD_SW_speed", 20]);
        _path2 pushBack _pos;
    };
    donhector_landvehicle2 setDriveOnPath _path2;

}, [], 3] call CBA_fnc_waitAndExecute;
