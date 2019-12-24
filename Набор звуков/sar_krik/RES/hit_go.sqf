// Скрипт криков ранения, резистенс
// имя_юнита AddEventHandler ["hit",{_this execvm "\sar_krik\res\hit_ar.sqf"}]


_obj = _this select 0;
_n = random 80;

_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};
if (_obj distance player < 100) then {Switch (floor (random 13)) do {
case 0: {_obj say "go1"};
case 1: {_obj say "go2"};
case 2: {_obj say "go3"};
case 3: {_obj say "go4"};
case 4: {_obj say "go5"};
case 5: {_obj say "go6"};
case 6: {_obj say "go7"};
case 7: {_obj say "go8"};
case 8: {_obj say "go9"};
case 9: {_obj say "go10"};
case 10: {_obj say "go11"};
case 11: {_obj say "go12"};
case 12: {_obj say "go13"};
}
};
