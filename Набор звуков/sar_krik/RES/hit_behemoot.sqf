// Скрипт криков ранения, резистенс
// имя_юнита AddEventHandler ["hit",{_this execvm "\sar_krik\res\hit.sqf"}]


_obj = _this select 0;
_n = random 80;
_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};


if (_obj distance player < 100) then {Switch (floor (random 56)) do {
case 0: {_obj say "150_1"};
case 1: {_obj say "150_2"};
case 2: {_obj say "150_3"};
case 3: {_obj say "150_4"};
case 4: {_obj say "151_1"};
case 5: {_obj say "151_2"};
case 6: {_obj say "151_3"};
case 7: {_obj say "152_1"};
case 8: {_obj say "152_2"};
case 9: {_obj say "152_3"};
case 10: {_obj say "153_1"};
case 11: {_obj say "153_2"};
case 12: {_obj say "153_3"};
case 13: {_obj say "154_1"};
case 14: {_obj say "154_2"};
case 15: {_obj say "154_3"};
case 16: {_obj say "154_3"};
case 17: {_obj say "155_1"};
case 18: {_obj say "155_2"};
case 19: {_obj say "155_3"};
case 20: {_obj say "155_4"};
case 21: {_obj say "156_1"};
case 22: {_obj say "156_2"};
case 23: {_obj say "156_3"};
case 24: {_obj say "156_4"};
case 25: {_obj say "157_1"};
case 26: {_obj say "157_2"};
case 27: {_obj say "157_3"};
case 28: {_obj say "157_4"};
case 29: {_obj say "158_1"};
case 30: {_obj say "158_2"};
case 31: {_obj say "158_3"};
case 32: {_obj say "159_1"};
case 33: {_obj say "159_2"};
case 34: {_obj say "159_3"};
case 35: {_obj say "159_4"};
case 36: {_obj say "160_1"};
case 37: {_obj say "160_2"};
case 38: {_obj say "160_3"};
case 39: {_obj say "160_4"};
case 40: {_obj say "161_1"};
case 41: {_obj say "161_2"};
case 42: {_obj say "161_3"};
case 43: {_obj say "161_4"};
case 44: {_obj say "162_1"};
case 45: {_obj say "162_2"};
case 46: {_obj say "162_3"};
case 47: {_obj say "162_4"};
case 48: {_obj say "163_1"};
case 49: {_obj say "163_2"};
case 50: {_obj say "163_3"};
case 51: {_obj say "163_4"};
case 52: {_obj say "164_1"};
case 53: {_obj say "164_2"};
case 54: {_obj say "164_3"};
case 55: {_obj say "164_4"};

}
};
exit
