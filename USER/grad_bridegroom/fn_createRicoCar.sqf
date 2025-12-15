
private _car = "Edaly_Ferdj_Cheyen_Beige" createVehicle _position;
private _rico = [[0,0,0]] call grad_bridegroom_fnc_createRico;

_rico attachTo [_car, [0.0785828,-1.86035,0.0102386]];
_rico setVectorDirAndUp [[-0.076821,-0.9966,0.0297741],[0.00318875,0.0296167,0.999556]];

private _driver = (creategroup civilian) createUnit ["C_Man_1", [0,0,0], [], 0, "NONE"];
_driver setUnitLoadout [[[],[],[],["U_C_FormalSuit_01_tshirt_black_F",[]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]],false];

_driver moveInDriver _car;
_driver setBehaviour "CARELESS";

[_driver] call grad_bridegroom_fnc_ricoDriverAction;