/*
	Автор: PIONEER
	Динамическое создание вертолёта

	["start","end",180] execvm "duc\helicopter.sqf";

	1 - стартовая позиция (маркер)
	2 - конечная позиция (маркер)
	3 - азимут

	west
	resistance
	east
*/

params ["_startpos","_endpos","_dir","_up"];

_group = createGroup west;

_vehicle =  createVehicle ["RHS_AH64D_wd",getmarkerpos _startPos, [], 0, "FLY"];
createVehicleCrew _vehicle;
private _group = group driver _vehicle;
_group addVehicle _vehicle;

_vehicle setdir _dir;
[_group,_endpos] call PL_fnc_Waypoint;

// поддержка VCOM
_group setVariable ["VCM_Skilldisable",true];
_group setVariable ["VCM_NOFLANK",true];