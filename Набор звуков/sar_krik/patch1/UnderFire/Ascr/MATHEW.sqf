


_obj = _this select 0;

_Fn_zong = {
		if ( _this distance player < 150 and alive _this) then {	
Switch (floor (random 3)) do {
case 0: {

_this say  

	Switch (floor (random 4)) do {
case 0: {  "USA_UnderFire_MATHEW_1"};
case 1: {  "USA_UnderFire_MATHEW_2"};
case 2: {  "USA_UnderFire_MATHEW_3"};
case 3: {  "USA_UnderFire_MATHEW_4"};

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