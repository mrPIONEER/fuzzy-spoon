/*
	Стартовый скрипт, задаем всё что должно активироваться на брифинге до старта миссии.
	
	Информация по задачам: https://community.bistudio.com/wiki/Arma_3_Task_Framework
	Набор стандартных скриптов: https://community.bistudio.com/wiki/Event_Scripts
*/


// jip
if !(isNil "INITDONE") exitWith {};
INITDONE = true;

titleCut ["","Black faded",0];

0 fadesound 0;
enableRadio false;

// ИНДЕНТИФИКАЦИЯ ПЕРСОНАЖЕЙ
player setidentity "pl_person_1";
baza setidentity "pl_person_2";
group otr setGroupId [localize "STRD_pl_group_1", "GroupColor0"];
group baza setGroupId [localize "STRD_pl_group_2", "GroupColor0"];

// АКТИВАЦИЯ ПЕРВОНАЧАЛЬНЫХ СКРИПТОВ

[] spawn PL_fnc_Debug;
[] spawn PL_fnc_vcom;
[] spawn PL_fnc_skill;
[] spawn PL_fnc_Nospeed;
[] spawn PL_fnc_nouniform;
[] spawn PL_fnc_NoSnake;
[] spawn PL_fnc_No3D;
[] spawn PL_fnc_FrendlyFire;

setViewDistance 2000;
otr allowDamage true;

player call compile preprocessFileLineNumbers "equip\s1.sqf";

// ЗАДАЧИ
["task1", true, [localize "STRD_Task1_des", localize "STRD_Task1","task1"], getMarkerPos "task1", "CREATED", 1, true, true, "default", true] call BIS_fnc_setTask;

// БРИФИНГ
player createDiaryRecord ["Diary", [localize "STRD_Plan_title1", localize "STRD_Plan1"]];
player createDiaryRecord ["Diary", [localize "STRD_Plan_title2", localize "STRD_Plan2"]];

// Блюр
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6]; 
"dynamicBlur" ppEffectCommit 0;  
"dynamicBlur" ppEffectAdjust [0.0]; 
"dynamicBlur" ppEffectCommit 5;

sleep 2;
titleCut ["","Black in",1];
1 fadesound 1;
enableRadio true;

// стартовый скрипт миссии
//[] execVM "start_mission.sqf";