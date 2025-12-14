["Land_Edaly_LinvingSet_Chair_01_F", "init", {
    
    params ["_object", "_unit"];

    if (!local _object) exitWith {};
    
    [_object] remoteExec ["grad_hairDresser_fnc_sitOnChairAction", 0, _object];

}, true, [], true] call CBA_fnc_addClassEventHandler;
