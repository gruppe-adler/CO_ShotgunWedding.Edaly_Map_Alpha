
params ["_plane"];

private _textureObj = "UserTexture10m_F" createVehicle [0,0,0];
_textureObj setObjectTexture [0, "data\intro_typo.paa"];

private _distanceFromPlayer = 50;

[
    {
        params ["_args", "_handle"];
        _args params ["_textureObj", "_plane", "_dist"];

        // --- Exit Conditions ---
        if (isNull _textureObj || isNull _plane || !alive player) exitWith {
            // Cleanup object and remove handler
            if (!isNull _textureObj) then { deleteVehicle _textureObj; };
            [_handle] call CBA_fnc_removePerFrameHandler;
        };

        if (missionNameSpace getVariable ["grad_landingDone", false]) exitWith {
            // Cleanup object and remove handler
            deleteVehicle _textureObj;
            [_handle] call CBA_fnc_removePerFrameHandler;
        };

        // --- Vector Math ---
        // Get positions (ASL for stability)
        private _pPos = AGLtoASL (positionCameraToWorld [0,0,0]);
        private _tPos = getPosASLVisual _plane;
        
        // Calculate Direction Unit Vector from Player -> Target
        // vectorFromTo automatically normalizes the vector
        private _dirVector = _pPos vectorFromTo _tPos;

        // Calculate the specific position on that line
        // P_new = P_start + (Direction * Distance)
        private _drawPos = _pPos vectorAdd (_dirVector vectorMultiply _dist);

        // --- Apply Updates ---
        _textureObj setPosASL _drawPos;

        // Rotate to face player:
        // VectorDir: From Texture -> Player
        // VectorUp: Standard Up [0,0,1] ensures it doesn't roll weirdly
        private _faceVector = _pPos vectorFromTo _drawPos; 
        _textureObj setVectorDir _faceVector;

}, 0, [_textureObj, _plane, _distanceFromPlayer]] call CBA_fnc_addPerFrameHandler;