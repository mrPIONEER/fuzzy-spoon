
_obj = _this select 0;

_Fn_zong = {
if ( _obj distance player < 150 and alive _obj) then {
Switch (floor (random 3)) do {
case 0: {

_obj say  [
	
Switch (floor (random 23)) do {
case 0: {_obj say "Underfire_alf3_1"};
case 1: {_obj say "Underfire_alf3_2"};
case 2: {_obj say "Underfire_alf3_3"};
case 3: {_obj say "Underfire_alf3_4"};
case 4: {_obj say "Underfire_alf3_5"};
case 5: {_obj say "Underfire_alf3_6"};
case 6: {_obj say "Underfire_alf3_7"};
case 7: {_obj say "Underfire_alf3_8"};
case 8: {_obj say "Underfire_alf3_9"};
case 9: {_obj say "Underfire_alf3_10"};
case 10: {_obj say "Underfire_alf3_11"};
case 11: {_obj say "Underfire_alf3_12"};
case 12: {_obj say "Underfire_alf3_13"};
case 13: {_obj say "Underfire_alf3_14"};
case 14: {_obj say "Underfire_alf3_15"};
case 15: {_obj say "Underfire_alf3_16"};
case 16: {_obj say "Underfire_alf3_17"};
case 17: {_obj say "Underfire_alf3_18"};
case 18: {_obj say "Underfire_alf3_19"};
case 19: {_obj say "Underfire_alf3_20"};
case 20: {_obj say "Underfire_alf3_21"};
case 21: {_obj say "Underfire_alf3_22"};
case 22: {_obj say "Underfire_alf3_23"};
				
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