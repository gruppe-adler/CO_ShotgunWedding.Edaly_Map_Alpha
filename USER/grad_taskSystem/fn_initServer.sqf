if (!isServer) exitWith {};

// Variable, um die aktuelle Eskort-Phase zu tracken
mission_escort_stage = 1; 
publicVariable "mission_escort_stage";

// Hauptfunktion für den Missionsfluss
fnc_handleWeddingPhase = {
    params ["_phaseType", "_pos"];

    // _phaseType: String ("START", "HAIR", "AMBUSH", "SWAMP", "TWIST", "FINALE", "RESUME")
    // _pos: Position (wird vom ZEN Modul übergeben)

    switch (_phaseType) do {

        private _taskPos = [0,0,0];
        
        // --- PHASE 1: MISSION START ---
        case "START": {
            private _taskPos = getMarkerPos "mrk_church";
            [
                true, 
                ["task_escort_1"], 
                ["Bring the bridal couple to the church. Drive slow.", "Escort to the Church"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "car", 
                true
            ] call BIS_fnc_taskCreate;
        };

        // --- INTERRUPTION: PHOTO SPOT 1 ---
        case "PHOTO1": {
            private _taskPos = getMarkerPos "mrk_photo1"; // ZIEL: PHOTO SPOT 1
            // 1. Laufende Eskorte abbrechen
            ["task_escort_" + str mission_escort_stage, "CANCELED"] call BIS_fnc_taskSetState;
            
            // 2. Neue Task erstellen
            [
                true, 
                ["task_photo1"], 
                ["A photo spot from the past. Park here and snap some pictures with the camera from the car.", "POI: The Romantic Photo"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "loc_interact", 
                true
            ] call BIS_fnc_taskCreate;
            
        };


        // --- INTERRUPTION: BANK ---
        case "BANK": {
            private _taskPos = getMarkerPos "mrk_bank"; // ZIEL: BANK
            // 1. Laufende Eskorte abbrechen
            ["task_escort_" + str mission_escort_stage, "CANCELED"] call BIS_fnc_taskSetState;
            
            // 2. Neue Task erstellen
            [
                true, 
                ["task_bank"], 
                ["Marco forgot his Wallet in the Bank.", "POI: The Bank"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "loc_Pick", 
                true
            ] call BIS_fnc_taskCreate;
        };



        // --- INTERRUPTION: FRISEUR ---
        case "HAIR": {
            private _taskPos = getMarkerPos "mrk_hairdresser"; // ZIEL: FRISEUR
            // 1. Laufende Eskorte abbrechen
            ["task_escort_" + str mission_escort_stage, "CANCELED"] call BIS_fnc_taskSetState;
            
            // 2. Neue Task erstellen
            [
                true, 
                ["task_hairdresser"], 
                ["The bride needs a touch-up. Secure the salon. Do not let anyone in or out.", "POI: The Hairdresser"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "loc_repair", 
                true
            ] call BIS_fnc_taskCreate;
        };

        // --- INTERRUPTION: BLUMEN/AMBUSH ---
        case "AMBUSH": {
            private _taskPos = getMarkerPos "mrk_ambush";

            ["task_escort_" + str mission_escort_stage, "CANCELED"] call BIS_fnc_taskSetState;
            
            [
                true, 
                ["task_ambush"], 
                ["The convoy is being blocked. Remove the obstacle and repel the attack.", "ALARM: Ambush"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "defend", 
                true
            ] call BIS_fnc_taskCreate;
        };

         // --- INTERRUPTION: PHOTO SPOT 1 ---
        case "PHOTO2": {
            private _taskPos = getMarkerPos "mrk_photo2"; // ZIEL: PHOTO SPOT 2
            // 1. Laufende Eskorte abbrechen
            ["task_escort_" + str mission_escort_stage, "CANCELED"] call BIS_fnc_taskSetState;
            
            // 2. Neue Task erstellen
            [
                true, 
                ["task_photo2"], 
                ["Another photo spot from the past. Park here and snap some pictures with the camera from the car.", "POI: Another Romantic Photo"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "loc_interact", 
                true
            ] call BIS_fnc_taskCreate;
            
        };

        // --- RESUME ESCORT (Nach einem Event) ---
        case "RESUME": {
            private _taskPos = getMarkerPos "mrk_church";
            // 1. Vorherige Side-Tasks abschließen (falls noch offen)
            {
                if ([_x] call BIS_fnc_taskState == "ASSIGNED") then { 
                    [_x, "SUCCEEDED"] call BIS_fnc_taskSetState;
                };
            } forEach ["task_photo1", "task_photo2", "task_hairdresser", "task_bank", "task_ambush"];
            
            // 2. Eskort-Zähler hochsetzen
            mission_escort_stage = mission_escort_stage + 1;
            publicVariable "mission_escort_stage";

            // 3. Neue Eskort-Task erstellen
            [
                true, 
                ["task_escort_" + str mission_escort_stage], 
                ["Proceed to the church. Dont speed.", "Church Escort"],
                _taskPos, // Hier idealerweise die Position der Kirche übergeben
                "ASSIGNED", 
                1, 
                true, 
                "car", 
                true
            ] call BIS_fnc_taskCreate;
        };

        // --- PHASE 2: THE TWIST (Marco flieht) ---
        case "TWIST": {
            // Alles abbrechen
            ["task_escort_" + str mission_escort_stage, "FAILED"] call BIS_fnc_taskSetState;
            {
                if ([_x] call BIS_fnc_taskState == "ASSIGNED") then { 
                    [_x, "SUCCEEDED"] call BIS_fnc_taskSetState;
                };
            } forEach ["task_photo1", "task_photo2", "task_hairdresser", "task_bank", "task_ambush"];
            
            
            [
                true, 
                ["task_survive"], 
                ["Secure the couple and regroup.", "Assassination Attempt"], 
                objNull, 
                "ASSIGNED", 
                1, 
                true, 
                "defend", 
                true
            ] call BIS_fnc_taskCreate;
        };

        // --- PHASE 3: REVENGE (Finale) ---
        case "FINALE": {
            private _taskPos = getMarkerPos "mrk_villa"; // ZIEL: PHOTO SPOT 1
            ["task_survive", "SUCCEEDED"] call BIS_fnc_taskSetState;

            ["task_escort_" + str mission_escort_stage, "FAILED"] call BIS_fnc_taskSetState;
            {
                if ([_x] call BIS_fnc_taskState == "ASSIGNED") then { 
                    [_x, "SUCCEEDED"] call BIS_fnc_taskSetState;
                };
            } forEach ["task_photo1", "task_photo2", "task_hairdresser", "task_bank", "task_ambush"];
            

            [
                true, 
                ["task_kill_marco"], 
                ["Marco has to be eliminated. He probably hides in his mansion.", "Target Elimination: Marco"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "loc_destroy", 
                true
            ] call BIS_fnc_taskCreate;
        };


         // --- PHASE 3: REVENGE (Finale) ---
        case "EXTRACTION": {
            ["task_kill_marco", "SUCCEEDED"] call BIS_fnc_taskSetState;

            private _taskPos = getMarkerPos "mrk_extract"; // AIRPORT
            [
                true, 
                ["task_extract"], 
                ["Escape the island", "Extraction"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "c_plane", 
                true
            ] call BIS_fnc_taskCreate;
        };


        case "EXTRACTION_DONE": {
            ["task_extract", "SUCCEEDED"] call BIS_fnc_taskSetState;

            [["music_outro", 1]] remoteExec ["playsound", 0];

            [] spawn {
                sleep 30;

                ["end1", true, 5] remoteExec ["BIS_fnc_endMission"];
            };
        };
    };
};