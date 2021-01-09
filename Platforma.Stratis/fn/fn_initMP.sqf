/*
	Автор: PIONEER
	Отключение сохранений, запрет на JIP и провал если игрок умер
	Включать если только миссия для COOP
	
	[] spawn PL_fnc_initMP;

	0 - true\false отключение JIP 
*/

params [["_jip",false]];

if (isMultiplayer) then {
	// отключение JIP
	if (_jip) then {
		if (didJIP) exitWith {["pl_loser_jip",false,false] call BIS_fnc_endMission;};
	};
	// провал если игрок умер
	{_x addEventHandler ["Killed", {
		{
			["pl_loser_kill_player",false] call BIS_fnc_endMission;
		} remoteExec ["bis_fnc_call", 0];
		}];
	} forEach allPlayers;
} else {
	// отключение переключению юнитов
	enableTeamSwitch false;
}