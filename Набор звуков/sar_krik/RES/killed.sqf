// скрипт крика об убийстве резистенса
// имя_юнита AddEventHandler ["killed",{_this execvm "\sar_krik\res\killed.sqf"}]


_target = _this select 0;
_obj =_this select 1;
_n = random 80;
_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};

if (_obj distance player < 25) then {Switch (floor (random 4)) do {
case 0: {player say "RES_Death_1"};
case 1: {player say "RES_Death_2"};
case 2: {player say "RES_Death_3"};
case 3: {player say "RES_Death_4"};
}
};