params ["_unit"];

private _posASL = (_unit modelToWorldWorld (_unit selectionPosition "Head"));

private _source = "#particlesource" createVehicleLocal [0, 0, 0]; 
_source setPosASL _posASL; 
_source setParticleParams 
    [ 
        ["\a3\data_f\particleEffects\universal\universal.p3d",16,8,48,0],"", 
        "billboard", 
        0, 
        0.5, 
        [0,0,0.5], 
        [0,0,3], 
        0,10.30,1,-0.1, 
        [0,1], 
        [[0.5,0,0,0.8],[0.3,0,0,0.8],[0.25,0,0,0.5],[0.15,0,0,0]], 
        [0.01], 
        0.01, 
        0.08, 
        "", 
        "", 
        _this, 
        0, 
        true, 
        0.5, 
        [[0.5,0,0,1]] 
    ]; 
_source setDropInterval 1; 
 
 
// meat flowing around 
private _source2 = "#particlesource" createVehicleLocal [0, 0, 0];  
_source2 setPosASL _posASL;  
_source2 setParticleCircle [0, [0, 0, 2]];  
_source2 setParticleRandom [0, [1, 1, 1], [2, 2, 2], 0, 0.2, [0, 0, 0, 0.1], 0, 0];  
_source2 setParticleParams [
    ["\A3\data_f\ParticleEffects\Universal\Meat_ca.p3d", 1, 0, 1], "", "SpaceObject", 0.5, 120, 
    [0.1, 0.1, 1], [0, 0, 0], 0.5, 200, 20, 3.75, [0.8,0.8,0.8], [[0.3, 0.3, 0.3, 1], [0.3, 0.3, 0.3, 0.3], [0.3, 0.3, 0.3, 0]], 
    [0.08], 1, 0, "", "", _this,0,true,0.1
];  
_source2 setDropInterval 0.001; 
 
[{ 
    params ["_source"]; 
    deleteVehicle _source; 
}, [_source] ,0.5] call CBA_fnc_waitAndExecute; 
 
[{ 
    params ["_source2"]; 
    deleteVehicle _source2; 
}, [_source2] ,0.1] call CBA_fnc_waitAndExecute;