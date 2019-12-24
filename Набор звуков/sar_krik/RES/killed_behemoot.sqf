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

if (_obj distance player < 25) then {Switch (floor (random 8)) do {
case 0: {player say "duh_death_01"};
case 1: {player say "duh_death_02"};
case 2: {player say "duh_death_03"};
case 3: {player say "duh_death_04"};
case 4: {player say "duh_death_05"};
case 5: {player say "duh_death_06"};
case 6: {player say "duh_death_07"};
case 7: {player say "duh_death_08"};
}
};