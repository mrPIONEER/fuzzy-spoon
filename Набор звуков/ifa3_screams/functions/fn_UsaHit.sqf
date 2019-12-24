/*
	IFA3 Liberation
	Крики от ранения

	Код: PIONEER
*/

// Проверка настроек CBA
if (!ifa3_screams_cba_hit_green) exitwith {};

// на сервере только запускается
if (!isServer) exitwith {};

_obj = _this select 0;
_shooter = _this select 1;

// Проверка на стреляющего
if !(_shooter isKindOf "MAN" or _shooter isKindOf "car" or _shooter isKindOf "tank") exitWith {};

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};

_randomkrik = [

"usa_hit_1_wounded1a",
"usa_hit_1_wounded2a",
"usa_hit_1_wounded3a",
"usa_hit_1_wounded4a",
"usa_hit_1_wounded5",
"usa_hit_1_wounded6",
"usa_hit_1_wounded7",
"usa_hit_1_wounded8",
"usa_hit_1_wounded9",
"usa_hit_1_wounded10",
"usa_hit_1_wounded11",
"usa_hit_1_wounded12",
"usa_hit_1_wounded13",
"usa_hit_1_wounded14",
"usa_hit_1_wounded15",
"usa_hit_2_wounded1",
"usa_hit_2_wounded2",
"usa_hit_2_wounded3",
"usa_hit_2_wounded4",
"usa_hit_2_wounded5",
"usa_hit_2_wounded6",
"usa_hit_2_wounded7",
"usa_hit_2_wounded8",
"usa_hit_2_wounded9",
"usa_hit_2_wounded10",
"usa_hit_2_wounded11",
"usa_hit_2_wounded12",
"usa_hit_2_wounded13",
"usa_hit_2_wounded14",
"usa_hit_2_wounded15",
"usa_hit_3_wounded1",
"usa_hit_3_wounded2",
"usa_hit_3_wounded3",
"usa_hit_3_wounded4",
"usa_hit_3_wounded5",
"usa_hit_3_wounded6",
"usa_hit_3_wounded7",
"usa_hit_3_wounded8",
"usa_hit_3_wounded9",
"usa_hit_3_wounded10",
"usa_hit_3_wounded11",
"usa_hit_3_wounded12",
"usa_hit_3_wounded13",
"usa_hit_3_wounded14",
"usa_hit_3_wounded15",
"usa_hit_3_wounded16",
"usa_hit_3_wounded17",
"usa_hit_3_wounded18",
"usa_hit_3_wounded19",
"usa_hit_3_wounded20",
"usa_hit_4_wounded1",
"usa_hit_4_wounded2",
"usa_hit_4_wounded3",
"usa_hit_4_wounded4",
"usa_hit_4_wounded5",
"usa_hit_4_wounded6",
"usa_hit_4_wounded7",
"usa_hit_4_wounded8",
"usa_hit_4_wounded9",
"usa_hit_4_wounded10",
"usa_hit_4_wounded11",
"usa_hit_4_wounded12",
"usa_hit_4_wounded13",
"usa_hit_4_wounded14",
"usa_hit_4_wounded15",
"usa_hit_5_wounded1",
"usa_hit_5_wounded2",
"usa_hit_5_wounded3",
"usa_hit_5_wounded4",
"usa_hit_5_wounded5",
"usa_hit_5_wounded6",
"usa_hit_5_wounded7",
"usa_hit_5_wounded8",
"usa_hit_5_wounded9",
"usa_hit_5_wounded10",
"usa_hit_5_wounded11",
"usa_hit_5_wounded12",
"usa_hit_5_wounded13",
"usa_hit_5_wounded14",
"usa_hit_5_wounded15",
"usa_hit_6_wounded1",
"usa_hit_6_wounded2",
"usa_hit_6_wounded3",
"usa_hit_6_wounded4",
"usa_hit_6_wounded5",
"usa_hit_6_wounded6",
"usa_hit_6_wounded7",
"usa_hit_6_wounded8",
"usa_hit_6_wounded9",
"usa_hit_6_wounded10",
"usa_hit_6_wounded11",
"usa_hit_6_wounded12",
"usa_hit_6_wounded13",
"usa_hit_6_wounded14",
"usa_hit_6_wounded15",
"usa_hit_7_wounded1",
"usa_hit_7_wounded2",
"usa_hit_7_wounded3",
"usa_hit_7_wounded4",
"usa_hit_7_wounded5",
"usa_hit_7_wounded6",
"usa_hit_7_wounded7",
"usa_hit_7_wounded8",
"usa_hit_7_wounded9",
"usa_hit_7_wounded10",
"usa_hit_7_wounded11",
"usa_hit_7_wounded12",
"usa_hit_7_wounded13",
"usa_hit_7_wounded14",
"usa_hit_7_wounded15"

] call BIS_fnc_selectRandom;

[_obj, _randomkrik, 100] call CBA_fnc_globalSay3d;

if (true) exitWith {};