/*
	Автор: PIONEER
	Динамическое создание отделение пехоты

	["start","end"] execvm "duc\pehota.sqf";

	1 - стартовая позиция (маркер)
	2 - конечная позиция (маркер)

	west
	resistance
	east
*/

if (!isServer) exitWith {};

params ["_startpos","_endpos"];

_startpos= _this select 0;
_endpos = _this select 1;


_group = createGroup west;

// отделение пехоты
"rhsusf_army_ucp_squadleader" createUnit [getmarkerPos _startPos, _group,""];
"rhsusf_army_ucp_teamleader" createUnit [getmarkerPos _startPos, _group,""];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group,""];
"rhsusf_army_ucp_autorifleman" createUnit [getmarkerPos _startPos, _group,""];
"rhsusf_army_ucp_grenadier" createUnit [getmarkerPos _startPos, _group,""];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group,""];

[_group,_endpos] call PL_fnc_Waypoint;

// поддержка VCOM
_group setVariable ["VCM_Skilldisable",true];
_group setVariable ["VCM_NOFLANK",true];