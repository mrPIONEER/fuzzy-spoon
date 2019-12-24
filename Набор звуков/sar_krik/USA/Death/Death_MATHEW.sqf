
_obj = _this select 0;
_n = random 80;

_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (resistance countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};

if ( _obj distance player < 30) then {Switch (floor (random 3)) do {
case 0: {player  say "usa_Death_MATHEW_1"};
case 1: {player  say "usa_Death_MATHEW_2"};
case 2: {player  say "usa_Death_MATHEW_3"};
}
};