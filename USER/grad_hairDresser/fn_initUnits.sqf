if (isServer) then {
    {
        _x enableSimulationGlobal false;
        _x hideObjectGlobal true;
    } forEach [GRAD_SW_HairDresserPickup, GRAD_SW_HairDresserHilux, GRAD_SW_HairDresserVolga_1, GRAD_SW_HairDresserVolga_2];

    {
        _x enableSimulationGlobal false;
        _x hideObjectGlobal true;

        {
            _x enableSimulationGlobal false;
            _x hideObjectGlobal true;
        } forEach crew _x;
    } forEach [donhector_heli1, donhector_heli2, donhector_heli3];

    {
        _x enableSimulationGlobal false;
        _x hideObjectGlobal true;

        {
            _x enableSimulationGlobal false;
            _x hideObjectGlobal true;
        } forEach crew _x;
    } forEach [donhector_landvehicle1, donhector_landvehicle2];
};
