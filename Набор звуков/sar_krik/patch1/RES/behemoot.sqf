
_obj = _this select 0;

_Fn_zong = {
		if ( _this distance player < 150 and alive _this) then {	
Switch (floor (random 3)) do {
case 0: {

_obj say  
Switch (floor (random 56)) do {
case 0: {    "150_1"};
case 1: {    "150_2"};
case 2: {    "150_3"};
case 3: {    "150_4"};
case 4: {    "151_1"};
case 5: {    "151_2"};
case 6: {    "151_3"};
case 7: {    "152_1"};
case 8: {    "152_2"};
case 9: {    "152_3"};
case 10: {    "153_1"};
case 11: {    "153_2"};
case 12: {    "153_3"};
case 13: {    "154_1"};
case 14: {    "154_2"};
case 15: {    "154_3"};
case 16: {    "154_3"};
case 17: {    "155_1"};
case 18: {    "155_2"};
case 19: {    "155_3"};
case 20: {    "155_4"};
case 21: {    "156_1"};
case 22: {    "156_2"};
case 23: {    "156_3"};
case 24: {    "156_4"};
case 25: {    "157_1"};
case 26: {    "157_2"};
case 27: {    "157_3"};
case 28: {    "157_4"};
case 29: {    "158_1"};
case 30: {    "158_2"};
case 31: {    "158_3"};
case 32: {    "159_1"};
case 33: {    "159_2"};
case 34: {    "159_3"};
case 35: {    "159_4"};
case 36: {    "160_1"};
case 37: {    "160_2"};
case 38: {    "160_3"};
case 39: {    "160_4"};
case 40: {    "161_1"};
case 41: {    "161_2"};
case 42: {    "161_3"};
case 43: {    "161_4"};
case 44: {    "162_1"};
case 45: {    "162_2"};
case 46: {    "162_3"};
case 47: {    "162_4"};
case 48: {    "163_1"};
case 49: {    "163_2"};
case 50: {    "163_3"};
case 51: {    "163_4"};
case 52: {    "164_1"};
case 53: {    "164_2"};
case 54: {    "164_3"};
case 55: {    "164_4"};

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