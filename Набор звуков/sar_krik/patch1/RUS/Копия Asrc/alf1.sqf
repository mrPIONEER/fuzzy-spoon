
_obj = _this select 0;

_Fn_zong = {
	If !(alive _obj) exitWith {};
Switch (floor (random 3)) do {
case 0: {

_obj say  [
if ( _obj distance player < 150 and alive _obj) then {	
Switch (floor (random 18)) do {
case 0: {  "Underfire_alf1_1"};
case 1: {  "Underfire_alf1_2"};
case 2: {  "Underfire_alf1_3"};
case 3: {  "Underfire_alf1_4"};
case 4: {  "Underfire_alf1_5"};
case 5: {  "Underfire_alf1_6"};
case 6: {  "Underfire_alf1_7"};
case 7: {  "Underfire_alf1_8"};
case 8: {  "Underfire_alf1_9"};
case 9: {  "Underfire_alf1_10"};
case 10: {  "Underfire_alf1_11"};
case 11: {  "Underfire_alf1_12"};
case 12: {  "Underfire_alf1_13"};
case 13: {  "Underfire_alf1_14"};
case 14: {  "Underfire_alf1_15"};
case 15: {  "Underfire_alf1_16"};
case 16: {  "Underfire_alf1_17"};
default {""};		
			}}, 150];
	};
case 1: {};
case 2: {};
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