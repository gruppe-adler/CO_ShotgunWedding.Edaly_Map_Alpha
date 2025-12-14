params ["_wallet"];

[{
    params ["_wallet"];

    _wallet setObjectTexture [0, "data\wallet_marco.paa"];


    _wallet addAction ["Take Marcos Wallet", {
        params ["_target", "_caller", "_actionId", "_arguments"];

        deleteVehicle _target;

        "Took Marcos Wallet " call CBA_fnc_notify;

        ["marco_wallet_taken", []] call CBA_fnc_globalEvent;

    }, nil, 6, false, true, "", "true"];

}, [_wallet], 5] call CBA_fnc_waitAndExecute;