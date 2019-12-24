/*
	Автор: PIONEER
	Динамическое создание техники с пехотой, с последующим десантированием. Машина уезжает и удаляется.

	["start","end","end2","end3",180] execvm "duc\vehicle_desant_end.sqf";

	1 - стартовая позиция (маркер)
	2 - позиция выгрузики (маркер)
	3 - конечная позиция (маркер)
	4 - конечная позиция автомобиля (маркер)
	3 - азимут

	west
	resistance
	east
*/

if (!isServer) exitWith {};

params ["_startpos","_endpos","_endpos2","_endpos3","_dir"];

_group = createGroup west;
_group_desant = createGroup west;

// техника
_vehicle = createVehicle ["rhsusf_m998_w_2dr_halftop",getmarkerpos _startpos, [], 0, ""]; 
createVehicleCrew _vehicle;
private _group = group driver _vehicle;
_group addVehicle _vehicle;

// отделение пехоты
"rhsusf_army_ucp_squadleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_teamleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_autorifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_autorifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];

_vehicle setdir _dir;

[_group,_endpos,"TR UNLOAD"] call PL_fnc_Waypoint;
[_group,_endpos3,"MOVE","FULL"] call PL_fnc_Waypoint;

[_group_desant,_endpos2] call PL_fnc_Waypoint;

waitUntil {_vehicle distance (getmarkerpos _endpos3) < 50};
{_vehicle deleteVehicleCrew _x} forEach crew _vehicle;
deleteVehicle _vehicle;

// поддержка VCOM
_group setVariable ["VCM_Skilldisable",true];
_group setVariable ["VCM_NOFLANK",true];
_group_desant setVariable ["VCM_Skilldisable",true];
_group_desant setVariable ["VCM_NOFLANK",true];