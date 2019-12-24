
_obj = _this select 0;
_n = random 80;

_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (resistance countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};

if ( _obj distance player < 250) then {Switch (floor (random 9)) do {
case 0: {_obj say "usa_hit_HOWARD_1"};
case 1: {_obj say "usa_hit_HOWARD_2"};
case 2: {_obj say "usa_hit_HOWARD_3"};
case 3: {_obj say "usa_hit_HOWARD_4"};
case 4: {_obj say "usa_hit_HOWARD_5"};
case 5: {_obj say "usa_hit_HOWARD_6"};
case 6: {_obj say "usa_hit_HOWARD_7"};
case 7: {_obj say "usa_hit_HOWARD_8"};
case 8: {_obj say "usa_hit_HOWARD_9"};
}
};