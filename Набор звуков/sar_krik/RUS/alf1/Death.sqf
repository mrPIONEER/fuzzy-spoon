_obj = _this select 0;
_n = random 80;

_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and Resistance countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};


if (_obj distance player < 25) then {Switch (floor (random 6)) do {
case 0: {player  say "RUS_alf1_Death_431"};
case 1: {player  say "RUS_alf1_Death_433"};
case 2: { player say "RUS_alf1_Death_434"};
case 3: { player say "RUS_alf1_Death_435"};
case 4: { player say "RUS_alf1_Death_436"};
case 5: { player say "RUS_alf1_Death_437"};
}
};