/*
	Автор: PIONEER
	Динамическое создание техники с пехотой, с последующим десантированием с парашютом

	["start","end",180,"end2","end3"] execvm "duc\helicopter_desant.sqf";

	1 - стартовая позиция (маркер)
	2 - позиция десантирования (маркер)
	3 - азимут
	4 - позиция конечная для вертолёта. При подлете удаляется
	5 - позиция конечная для пехоты

	west
	resistance
	east
*/

if (!isServer) exitWith {};

params ["_startpos","_endpos","_dir","_endpoheli","_endposSquad"];

_group = createGroup west;
_group_desant = createGroup west;

// вертолёт
_vehicle =  createVehicle ["B_Heli_Transport_01_F",getmarkerpos _startPos, [], 0, "FLY"];
createVehicleCrew _vehicle;
private _group = group driver _vehicle;
_group addVehicle _vehicle;

// отделение пехоты
"rhsusf_army_ucp_squadleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_teamleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_autorifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_grenadier" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_teamleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];

_vehicle setdir _dir;

[_group,_endpos] call PL_fnc_Waypoint;
[_group,_endpoheli] call PL_fnc_Waypoint;

[_group_desant,_endposSquad] call PL_fnc_Waypoint;

waitUntil {_vehicle distance (getmarkerpos _endpos) < 200};
[_vehicle] spawn PL_fnc_infParadrop;
waitUntil {_vehicle distance (getmarkerpos _endpoheli) < 200};
{_vehicle deleteVehicleCrew _x} forEach crew _vehicle;
deleteVehicle _vehicle;
deleteGroup _group;


// поддержка VCOM
_group setVariable ["VCM_Skilldisable",true];
_group setVariable ["VCM_NOFLANK",true];
_group_desant setVariable ["VCM_Skilldisable",true];
_group_desant setVariable ["VCM_NOFLANK",true];