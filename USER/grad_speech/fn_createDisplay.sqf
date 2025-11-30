/*
 * Function: fn_showDialogueUI
 * Description: Dynamically creates and manages the custom dialogue display locally on the client.
 * Uses the built-in "RscDisplayEmpty" to avoid needing a custom configuration file.
 * Executed on: Local client via fnc_advSpeak.
 *
 * Params:
 * 0: text       <String> - The subtitle text.
 * 1: duration   <Number> - How long the custom UI should stay open (e.g., 5).
 * 2: avatarPic  <String> - Path to the avatar image.
 */
params ["_text", "_duration", "_avatarPic"];

// Prevent multiple instances or conflicts
if (!isNull (uiNamespace getVariable "dynamicDialogueDisplay")) exitWith {};

// --- 1. Create the base display using a vanilla class ---
private _display = findDisplay 46 createDisplay "RscDisplayEmpty";

// Store the reference for cleanup
uiNamespace setVariable ["dynamicDialogueDisplay", _display];

// Ensure the display was created successfully
if (isNull _display) exitWith { diag_log "ERROR: dynamic dialogue display failed to create."; };

// Define geometry constants (using standard Arma 3 GUI scale and coordinate system)
private _avatarSize = 5 * safeZoneH;
private _padding = 0.5 * safeZoneH;
private _textWidth = 0.5 * safeZoneW;
private _totalHeight = _avatarSize + 2 * _padding;

// Calculate positions for a centered bottom-screen box
private _xStart = safeZoneX + (safeZoneW - _textWidth - _avatarSize - _padding) / 2;
private _yStart = safeZoneY + safeZoneH - _totalHeight - 0.05; // Slightly above bottom edge

// --- 2. Add RscBox (Visual container/background - first to be underneath) ---
private _backgroundBox = _display ctrlCreate ["RscBox", -1];
_backgroundBox ctrlSetPosition [
    _xStart - _padding, 
    _yStart, 
    _textWidth + _avatarSize + 2 * _padding, 
    _totalHeight
];
_backgroundBox ctrlSetBackgroundColor [0, 0, 0, 0.7]; // Dark, semi-transparent background for the whole box
_backgroundBox ctrlCommit 0;

// --- 3. Add RscPicture Control (Avatar) ---
private _avatarCtrl = _display ctrlCreate ["RscPicture", -1];
_avatarCtrl ctrlSetPosition [
    _xStart, 
    _yStart + _padding / 2, // Vertically centered in the box
    _avatarSize, 
    _avatarSize
];
_avatarCtrl ctrlSetText _avatarPic;
_avatarCtrl ctrlCommit 0;

// --- 4. Add RscText Control (Subtitle) ---
private _textCtrl = _display ctrlCreate ["RscText", -1];
_textCtrl ctrlSetPosition [
    _xStart + _avatarSize + _padding, 
    _yStart + _padding / 2, 
    _textWidth, 
    _avatarSize // Give it the same height as the avatar for multiline text
];
_textCtrl ctrlSetText _text;
_textCtrl ctrlSetFontHeight 0.045;
_textCtrl ctrlSetBackgroundColor [0, 0, 0, 0]; // Transparent background (Box handles the color)
_textCtrl ctrlSetTextColor [1, 1, 1, 1];
_textCtrl ctrlCommit 0;

// --- 5. Close Logic ---
// Use a waitUntil block to manage the duration and then close the display
private _startTime = diag_tickTime;
waitUntil { sleep 0.1; diag_tickTime >= _startTime + _duration || isNull _display };

// Remove controls (optional as closing the display usually cleans them up, but good practice)
{
    _display displayRemoveControl _x;
} forEach [_avatarCtrl, _textCtrl, _backgroundBox];

// Clean up uiNamespace variable and close the display
uiNamespace setVariable ["dynamicDialogueDisplay", nil];
_display closeDisplay 2; 

true