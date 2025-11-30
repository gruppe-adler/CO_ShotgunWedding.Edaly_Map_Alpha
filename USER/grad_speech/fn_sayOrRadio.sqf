/*
 * Function: fn_advSpeak
 * Description: Plays dialogue with positional audio, lip-sync, and custom subtitle/avatar display.
 * Executed on: All clients via remoteExec.
 *
 * Params:
 * 0: unit       <Object> - The unit speaking (used for position, lip-sync, and avatar context)
 * 1: audioID    <String> - The ID of the sound defined in CfgSounds (e.g., "my_line_01"). This handles native subtitles.
 * 2: text       <String> - The actual subtitle text (used for the custom UI override).
 * 3: duration   <Number> - How long the custom UI should stay open (e.g., 5).
 * 4: avatarPic  <String> - Path to the avatar image (e.g., "A3\ui_f\data\igui\cfg\debriefing\profile_icon_ca.paa").
 *
 * Example Call (Executed on Server/Client):
 * [player, "SQF_Line_01", "This is the subtitle text.", 5, "\A3\Characters_F\Data\UI\icon_g_b_ca.paa"] remoteExec ["fnc_advSpeak", 0, true];
 */
params ["_unit", "_audioID", "_text", "_duration", "_avatarPic"];

// --- INITIAL CHECKS ---
if (!isPlayer) exitWith {}; // Only run on clients
if (isNull _unit) exitWith {}; // Exit if the unit is dead/deleted

private _distance = _unit distance (player);
private _isClose = _distance <= 20;

// --- CUSTOM UI SETUP (Dummy for demonstration - requires Rsc setup) ---
// For a fully functional custom UI (with a specific avatar and duration), you need a custom Rsc file (Dialog)
// and control manipulation. This is complex, so we will simulate the logic below.
// In a real application, this function would open a dialog, display the avatar/text, and use
// a waitUntil loop or sleep to close it after `_duration`.

// START CUSTOM UI (Conceptual - assumes UI is loaded and ready)
// [0, "AdvSpeak", [_text, _avatarPic]] call BIS_fnc_advSubtitle; // A mock function to show the UI

// --- SOUND AND LIP-SYNC LOGIC ---

if (_isClose) then {
    // 1. Local 3D Sound (Close - 20m radius)
    // 'say' automatically handles 3D positional audio and triggers lip-sync animation.
    // It also displays the native subtitle if configured in CfgSubtitles.
    _unit say _audioID;
} else {
    // 2. Simple Global Sound (Far - >20m)
    // 'playSound' is simple, non-positional, and plays globally.
    // To simulate speech, we must manually trigger a talking animation.
    playSound _audioID;
    
    // Manual Lip Movement (Non-blocking)
    _unit setRandomLip true; // Enable random lip movement
    
    // We must ensure the animation stops after the duration.
    // This uses a deferred call, which is safe to run on the client.
    [
        {
            params ["_unit", "_duration"];
            // Wait for the requested duration. This is not perfect, as the sound length might vary.
            uiSleep _duration;
            // Stop talking animation (revert to idle)
            _unit switchMove ""; 
            // Also stop the custom UI here
            // [0, "AdvSpeak"] call BIS_fnc_advSubtitle_Close; 

             _unit setRandomLip false;
        }, 
        [_unit, _duration]
    ] remoteExec ["call", 0, false]; // Execute the delayed stop locally on the client (executes function block after a delay).
};

true