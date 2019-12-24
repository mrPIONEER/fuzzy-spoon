// Активация на выстрел 
// имя_юнита AddEventHandler ["fired",{_this execvm "fired.sqf"}]

_obj = _this select 0;
_wepn = _this select 1;
_wep = _this select 4;
_n = random 80;
_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and Resistance countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};

if (
(

(_wepn == "rhs_weap_igla") or
(_wepn == "rhs_weap_fgm148") or 
(_wepn == "rhs_weap_fim92") or 
(_wepn == "rhs_weap_M136") or 
(_wepn == "rhs_weap_M136_hedp") or 
(_wepn == "rhs_weap_M136_hp") or 
(_wepn == "rhs_weap_maaws") or 
(_wepn == "rhs_weap_m72a7") or 
(_wepn == "rhs_weap_smaw") or 
(_wepn == "rhs_weap_smaw_green") or 
(_wepn == "rhs_weap_rpg26") or 
(_wepn == "rhs_weap_rpg7") or 
(_wepn == "rhs_weap_rshg2") or 
(_wepn == "Throw")

)  and (_obj distance player < 100)) 
then {
Switch (floor (random 45)) do {
case 0: {_obj say "RUS_alf7_fired_292"};
case 1: {_obj say "RUS_alf7_fired_293"};
case 2: {_obj say "RUS_alf7_fired_294"};
case 3: {_obj say "RUS_alf7_fired_295"};
case 4: {_obj say "RUS_alf7_fired_296"};
case 5: {_obj say "RUS_alf7_fired_297"};
case 6: {_obj say "RUS_alf7_fired_324"};
case 7: {_obj say "RUS_alf7_fired_325"};
case 8: {_obj say "RUS_alf7_fired_326"};
case 9: {_obj say "RUS_alf7_fired_327"};
case 10: {_obj say "RUS_alf7_fired_375"};
case 11: {_obj say "RUS_alf7_fired_376"};
case 12: {_obj say "RUS_alf7_fired_377"};
case 13: {_obj say "RUS_alf7_fired_378"};
case 14: {_obj say "RUS_alf7_fired_379"};
case 15: {_obj say "RUS_alf7_fired_380"};
case 16: {_obj say "RUS_alf7_fired_381"};
case 17: {_obj say "RUS_alf7_fired_382"};
case 18: {_obj say "RUS_alf7_fired_383"};
case 19: {_obj say "RUS_alf7_fired_384"};
case 20: {_obj say "RUS_alf7_fired_385"};
case 21: {_obj say "RUS_alf7_fired_386"};
case 22: {_obj say "RUS_alf7_fired_387"};
case 23: {_obj say "RUS_alf7_fired_388"};
case 24: {_obj say "RUS_alf7_fired_389"};
case 25: {_obj say "RUS_alf7_fired_390"};
case 26: {_obj say "RUS_alf7_fired_391"};
case 27: {_obj say "RUS_alf7_fired_392"};
case 28: {_obj say "RUS_alf7_fired_393"};
case 29: {_obj say "RUS_alf7_fired_394"};
case 30: {_obj say "RUS_alf7_fired_395"};
case 31: {_obj say "RUS_alf7_fired_396"};
case 32: {_obj say "RUS_alf7_fired_397"};
case 33: {_obj say "RUS_alf7_fired_398"};
case 34: {_obj say "RUS_alf7_fired_399"};
case 35: {_obj say "RUS_alf7_fired_400"};
case 36: {_obj say "RUS_alf7_fired_401"};
case 37: {_obj say "RUS_alf7_fired_402"};
case 38: {_obj say "RUS_alf7_fired_403"};
case 39: {_obj say "RUS_alf7_fired_404"};
case 40: {_obj say "RUS_alf7_fired_405"};
case 41: {_obj say "RUS_alf7_fired_406"};
case 42: {_obj say "RUS_alf7_fired_407"};
case 43: {_obj say "RUS_alf7_fired_408"};
case 44: {_obj say "RUS_alf7_fired_409"};
}
};
exit