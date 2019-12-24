
_obj = _this select 0;

_Fn_zong = {
		if ( _this distance player < 150 and alive _this) then {	
Switch (floor (random 3)) do {
case 0: {

_obj say  
Switch (floor (random 10)) do {
case 0: {    "res_underfire_1"};
case 1: {    "res_underfire_2"};
case 2: {    "res_underfire_3"};
case 3: {    "res_underfire_4"};
case 4: {    "res_underfire_5"};
case 5: {    "res_underfire_6"};
case 6: {    "res_underfire_7"};
case 7: {    "res_underfire_8"};
case 8: {    "res_underfire_9"};
case 9: {    "res_underfire_10"};

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