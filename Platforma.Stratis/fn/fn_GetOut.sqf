/*
	Автор: PIONEER
	Выгрузка группы ИИ из техники
	
	Активация:
	[group] call PL_fnc_GetOut
	
	1 - имя группы
*/

if (!isServer) exitWith {};

params["_group"];

// высадка группы
{
	doGetOut _x; 
	unassignVehicle _x; 
	[_x] allowGetIn true;
} foreach units _group;