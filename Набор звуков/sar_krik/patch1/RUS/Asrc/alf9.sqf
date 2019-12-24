
_obj = _this select 0;

_Fn_zong = {
if ( _obj distance player < 150 and alive _obj) then {
Switch (floor (random 3)) do {
case 0: {

_obj say  [

Switch (floor (random 25)) do {
case 0: {    "Underfire_alf9_1"};
case 1: {    "Underfire_alf9_2"};
case 2: {    "Underfire_alf9_3"};
case 3: {    "Underfire_alf9_4"};
case 4: {    "Underfire_alf9_5"};
case 5: {    "Underfire_alf9_6"};
case 6: {    "Underfire_alf9_7"};
case 7: {    "Underfire_alf9_8"};
case 8: {    "Underfire_alf9_9"};
case 9: {    "Underfire_alf9_10"};
case 10: {    "Underfire_alf9_11"};
case 11: {    "Underfire_alf9_12"};
case 12: {    "Underfire_alf9_13"};
case 13: {    "Underfire_alf9_14"};
case 14: {    "Underfire_alf9_15"};
case 15: {    "Underfire_alf9_16"};
case 16: {    "Underfire_alf9_17"};
case 17: {    "Underfire_alf9_18"};
case 18: {    "Underfire_alf9_19"};
case 19: {    "Underfire_alf9_20"};
case 20: {    "Underfire_alf9_21"};
case 21: {    "Underfire_alf9_22"};
case 22: {    "Underfire_alf9_23"};
case 23: {    "Underfire_alf9_24"};
case 24: {    "Underfire_alf9_25"};
					
	};
case 1: {};
case 2: {};
};
};
sleep (random 30);
};
_con = [0,1];
WaitUntil {
_ms = getPos _obj nearEntities [["Man"] , 250];
if (Player countEnemy _ms > 0) then {
{
Switch _x do {
	case 0:{if (Player in _ms) then {_con = [1,2,3]}};
	case 1:{if !(alive _obj) then {_con resize 0}};
	case 2:{	if (count (getPos _obj nearObjects ["BulletBase",5]) > 0) then {_obj Call _Fn_zong}};
	case 3:{if !(Player in _ms) then {_con = [0,1]}};
	};
} forEach _con;

} else {sleep 1};

count _con == 0
};