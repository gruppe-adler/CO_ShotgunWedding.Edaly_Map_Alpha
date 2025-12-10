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

["SHOTGUN WEDDING - MISSION PROGRESS", "Resume Main Mission",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  ["RESUME"] remoteExec ["fnc_handleWeddingPhase", 2];
}] call zen_custom_modules_fnc_register;



/*

// should be semi automatic already

["SHOTGUN WEDDING - MISSION PROGRESS", "Mission 01 - Photo 1",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission1", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - MISSION PROGRESS", "Mission 02 - Bank",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission2", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - MISSION PROGRESS", "Mission 03 - Hairdresser",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission3", 2];
}] call zen_custom_modules_fnc_register;

["SHOTGUN WEDDING - MISSION PROGRESS", "Mission 04 - Photo 2",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission4", 2];
}] call zen_custom_modules_fnc_register;

*/

["SHOTGUN WEDDING - MISSION PROGRESS", "Mission 05 - Revenge",
{
  params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  [] remoteExec ["grad_speech_fnc_mission5", 2];
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
