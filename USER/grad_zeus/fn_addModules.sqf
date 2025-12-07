[] spawn {
  waitUntil {!isNull player};
  waitUntil {  time > 3 };

  {
    private _curator = _x;
    
      _curator addEventHandler ["CuratorGroupPlaced", {
          params ["", "_group"];

          ["GRAD_missionControl_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;
      }];

      _curator addEventHandler ["CuratorObjectPlaced", {
          params ["", "_object"];

          if (_object isKindOf "CAManBase") then {
             if (count units _object == 1) then {
                 ["GRAD_missionControl_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
             };
          } else {
             if (count crew _object > 1) then {
                 ["GRAD_missionControl_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
             };
         };

      }];

  } forEach allCurators;
};


["SHOTGUN WEDDING - MISSION PROGRESS", "Intro Landing Flight",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bridegroom_fnc_landingFlight", 2];
  [] remoteExec ["grad_speech_fnc_intro", 2];
}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - COUPLE", "Spawn Bride",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] call grad_bridegroom_fnc_createBride;
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - COUPLE", "Spawn Groom",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] call grad_bridegroom_fnc_createGroom;
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - RICO", "Spawn Rico",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [asltoagl _position] call grad_bridegroom_fnc_createRicoCar;
}] call zen_custom_modules_fnc_register;



["SHOTGUN WEDDING - RICO", "Rico sings",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_bridegroom_fnc_ricoSings", 0];

}] call zen_custom_modules_fnc_register;


["SHOTGUN WEDDING - CHURCH", "Headshot (manual)",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  private _priest = missionNameSpace getVariable ["grad_priest", objNull];
  if (isNull _priest) exitWith {
      "ERROR: Priest not found!" call CBA_fnc_notify;
  };

  [_position, _priest] remoteExec ["grad_church_fnc_headshot", 2];
}] call zen_custom_modules_fnc_register;




private _category = "SHOTGUN WEDDING - TASKS";

// Modul 1: Start
[_category, "1. Start: Eskorte", {
    params ["_pos", "_obj"];
    ["START"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;

// Modul 2: Event Friseur
[_category, "2. Event: Friseur (Stop)", {
    params ["_pos", "_obj"];
    ["HAIR"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;

// Modul 3: Event Ambush
[_category, "2. Event: Ambush (Stop)", {
    params ["_pos", "_obj"];
    ["AMBUSH"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;

// Modul 4: Weiterfahren
[_category, "3. Resume: Zur Kirche", {
    params ["_pos", "_obj"];
    // Zeus klickt auf die Kirche/Zielort
    ["RESUME"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;

// Modul 5: Der Twist
[_category, "4. THE TWIST (Verrat)", {
    params ["_pos", "_obj"];
    ["TWIST"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;

// Modul 6: Finale
[_category, "5. Finale: Kill Marco", {
    params ["_pos", "_obj"];
    ["FINALE"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;