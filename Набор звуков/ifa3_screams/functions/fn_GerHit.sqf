/*
	IFA3 Liberation
	Крики от ранения

	Код: PIONEER
*/

// Проверка настроек CBA
if (!ifa3_screams_cba_hit_blue) exitwith {};

// на сервере только запускается
if (!isServer) exitwith {};

_obj = _this select 0;
_shooter = _this select 1;

// Проверка на стреляющего
if !(_shooter isKindOf "MAN" or _shooter isKindOf "car" or _shooter isKindOf "tank") exitWith {};

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};

_randomkrik = [

"ger_1_wounded1",
"ger_1_wounded2",
"ger_1_wounded3",
"ger_1_wounded4",
"ger_1_wounded5",
"ger_1_wounded6",
"ger_1_wounded7",
"ger_1_wounded8",
"ger_1_wounded9",
"ger_1_wounded10",
"ger_1_wounded11",
"ger_1_wounded12",
"ger_1_wounded13",
"ger_1_wounded14",
"ger_1_wounded15",
"ger_1_wounded16",
"ger_1_wounded17",
"ger_1_wounded18",
"ger_1_wounded19",
"ger_2_wounded1",
"ger_2_wounded2",
"ger_2_wounded3",
"ger_2_wounded4",
"ger_2_wounded5",
"ger_2_wounded6",
"ger_2_wounded7",
"ger_2_wounded8",
"ger_2_wounded9",
"ger_2_wounded10",
"ger_2_wounded11",
"ger_2_wounded12",
"ger_2_wounded13",
"ger_2_wounded14",
"ger_2_wounded15",
"ger_2_wounded16",
"ger_2_wounded17",
"ger_2_wounded18",
"ger_2_wounded19",
"em1_wounded2",
"em1_wounded4",
"em1_wounded5",
"em1_wounded6",
"em1_wounded8",
"em1_wounded10"

] call BIS_fnc_selectRandom;

[_obj, _randomkrik, 100] call CBA_fnc_globalSay3d;

if (true) exitWith {};