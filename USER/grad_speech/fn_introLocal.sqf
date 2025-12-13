
private _texture = "UserTexture10m_F" createVehicle [0,0,0];

_texture setObjectTexture [0, "data\intro_typo.paa"];

[{


}, 0, []] call CBA_fnc_addPerFrameHandler;