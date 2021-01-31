/*
	Стартовый скрипт, задаем всё что должно активироваться на брифинге до старта миссии.
	
	Информация по задачам: https://community.bistudio.com/wiki/Arma_3_Task_Framework
	Набор стандартных скриптов: https://community.bistudio.com/wiki/Event_Scripts
*/

if (didJIP) exitWith {};

titleCut ["","Black faded",0];

0 fadesound 0;
enableRadio false;

// ИНДЕНТИФИКАЦИЯ ПЕРСОНАЖЕЙ
player setidentity "pl_person_1";
baza setidentity "pl_person_2";
group otr setGroupId [localize "STRD_pl_group_1", "GroupColor0"];
group baza setGroupId [localize "STRD_pl_group_2", "GroupColor0"];

[] call PL_fnc_vcom;
[] call PL_fnc_initMP;
[] spawn PL_fnc_skill;
PL_CadetMode = if (difficulty in [0,1]) then {true} else {false};

// ДЕБАГ
[] spawn {
	[] spawn PL_fnc_Debug;
	waitUntil {false};
	[player_of,east,300] call PL_fnc_KillAll;
};

setViewDistance 2000;
otr allowDamage true;

player call compile preprocessFileLineNumbers "equip\s1.sqf";

// ЗАДАЧИ
if (isServer) then {
	["task1", true, [localize "STRD_Task1_des", localize "STRD_Task1","task1"], getMarkerPos "task1", "CREATED", 1, true, true, "default", true] call BIS_fnc_setTask;
};


sleep 2;
titleCut ["","Black in",1];
1 fadesound 1;
enableRadio true;

// стартовый скрипт миссии
[] execVM "flow_1.sqf";