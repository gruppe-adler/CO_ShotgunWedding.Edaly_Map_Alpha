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
            private _taskPos = getMarkerPos "mrk_church"; // ZIEL: KIRCHE
            [
                true, 
                ["task_escort_1"], 
                ["Bringen Sie das Brautpaar zur Kirche. Fahren Sie VORSICHTIG (<30km/h).", "Eskorte zur Kirche"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "car", 
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
                ["Die Braut braucht ein Touch-Up. Sichern Sie den Salon. Lassen Sie niemanden rein oder raus.", "POI: Der Friseur"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "defend", 
                true
            ] call BIS_fnc_taskCreate;
            
            // Optional: Globaler Audio/Text
            ["Bride", "Haltet an! Meine Haare sitzen furchtbar!"] remoteExec ["BIS_fnc_showSubtitle"];
        };

        // --- INTERRUPTION: BLUMEN/AMBUSH ---
        case "AMBUSH": {
            private _taskPos = getMarkerPos "mrk_ambush"; // ZIEL: KIRCHE

            ["task_escort_" + str mission_escort_stage, "CANCELED"] call BIS_fnc_taskSetState;
            
            [
                true, 
                ["task_ambush"], 
                ["Der Konvoi wird blockiert. Beseitigen Sie das Hindernis und wehren Sie den Angriff ab.", "ALARM: Hinterhalt"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "attack", 
                true
            ] call BIS_fnc_taskCreate;
        };

        // --- RESUME ESCORT (Nach einem Event) ---
        case "RESUME": {
            private _taskPos = getMarkerPos "mrk_church"; // ZIEL: KIRCHE
            // 1. Vorherige Side-Tasks abschließen (falls noch offen)
            if (["task_hairdresser"] call BIS_fnc_taskState == "ASSIGNED") then { 
                ["task_hairdresser", "SUCCEEDED"] call BIS_fnc_taskSetState;
            };
            if (["task_ambush"] call BIS_fnc_taskState == "ASSIGNED") then { 
                ["task_ambush", "SUCCEEDED"] call BIS_fnc_taskSetState; 
            };
            
            // 2. Eskort-Zähler hochsetzen
            mission_escort_stage = mission_escort_stage + 1;
            publicVariable "mission_escort_stage";

            // 3. Neue Eskort-Task erstellen
            [
                true, 
                ["task_escort_" + str mission_escort_stage], 
                ["Setzen Sie die Fahrt zur Kirche fort. Tempo 30!", "Eskorte fortsetzen", "mrk_church"], 
                _taskPos, // Hier idealerweise die Position der Kirche übergeben
                "ASSIGNED", 
                1, 
                true, 
                "car", 
                true
            ] call BIS_fnc_taskCreate;

            ["Groom", "Alles gut, nur weiterfahren. Wir sind spät dran!"] remoteExec ["BIS_fnc_showSubtitle"];
        };

        // --- PHASE 2: THE TWIST (Marco flieht) ---
        case "TWIST": {
            // Alles abbrechen
            ["task_escort_" + str mission_escort_stage, "FAILED"] call BIS_fnc_taskSetState;
            
            [
                true, 
                ["task_survive"], 
                ["Marco hat uns verraten! Sichern Sie die Braut (falls sie lebt) und regruppieren Sie sich.", "WARNUNG: Verrat"], 
                objNull, 
                "ASSIGNED", 
                1, 
                true, 
                "run", 
                true
            ] call BIS_fnc_taskCreate;
             
             // Hier könntest du auch Marco unsterblich schalten via Script
        };

        // --- PHASE 3: REVENGE (Finale) ---
        case "FINALE": {
            ["task_survive", "SUCCEEDED"] call BIS_fnc_taskSetState;

            [
                true, 
                ["task_kill_marco"], 
                ["Marco feiert in seiner Villa. Stürmen Sie das Anwesen. Keine Gnade.", "Zieleliminierung: Marco", "mrk_villa"], 
                _taskPos, 
                "ASSIGNED", 
                1, 
                true, 
                "kill", 
                true
            ] call BIS_fnc_taskCreate;
        };
    };
};