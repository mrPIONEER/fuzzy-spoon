/*
	Автор: PIONEER
	Отключение сохранений, запрет на JIP и провал если игрок умер
	Включать если только миссия для COOP
	
	[] spawn PL_fnc_initMP;
*/

if (didJIP) exitWith {["pl_loser_jip",false,false] call BIS_fnc_endMission;};

// Отключаем сохранение и провал если хоть 1 игрок умер в MP
enableSaving [false, false];

{_x addEventHandler ["Killed", {
	{
		["pl_loser_kill_player",false] call BIS_fnc_endMission;
	} remoteExec ["bis_fnc_call", 0];
	}];
} forEach allPlayers;