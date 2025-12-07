// 1. MP Check: Ensure this only runs on the Server to prevent duplicates

// todo: not game ready quality unfortunately
if (true) exitWith {};

params [
    ["_car", weddingCar],      // Your car's variable name
    ["_numCans", 12],          // Number of cans to drag
    ["_ropeLength", 3.5]       // Base length of the wire
];

private _canClass = "Land_BakedBeans_F"; 
private _ropeClass = "TFAR_RopeSmallWire"; // The specific TFAR wire class

// 2. Calculate the rear attachment point
private _bbr = boundingBoxReal _car;
private _p1 = _bbr select 0;
private _p2 = _bbr select 1;
private _rearHeight = -0.45;
// Adjust the "+ 0.2" if the rope spawns too far inside the trunk
private _attachPoint = [0, (_p1 select 1)+0.5, _rearHeight]; 

for "_i" from 1 to _numCans do {
    // Spawn the can slightly behind the car
    private _slack = 0.5;
    private _spawnPos = _car modelToWorld [
        (random 1.2) - 0.6, 
        (_p1 select 1) - (_ropeLength - _slack), 
        0.5
    ];    
    private _can = createVehicle [_canClass, _spawnPos, [], 0, "CAN_COLLIDE"];
    _can setMass 0.0001;
    
    // 3. MP SYNC FIX
    // Transfer ownership of the can to the driver. 
    // This ensures the cans move smoothly on the driver's screen without lag.
    _can setOwner (owner _car);

    private _segCount = round (_realLength / 0.3);

    // 4. CREATE THE TFAR ROPE
    // Syntax: [obj1, pos1, obj2, pos2, length, [type, segmentLength]]
    ropeCreate [
        _car, 
        _attachPoint, 
        _can, 
        [0, 0, 0], 
        _ropeLength + (random 1.5), 
        nil,nil,
        _ropeClass, _segCount
    ];

    // 5. Sound Loop
    [_car, _can] spawn {
        params ["_car", "_can"];
        while {alive _car && alive _can} do {
            // Only clink if moving faster than 5 km/h
            if (speed _car > 5) then {
                playSound3D [
                    "A3\Sounds_F\sfx\debris\metal_canister_0" + str(floor(random 3) + 1) + ".wss",
                    _can,
                    false,
                    getPosASL _can,
                    1,
                    1 + (random 0.4),
                    60
                ];
            };
            sleep (0.2 + (random 0.6));
        };
    };
};