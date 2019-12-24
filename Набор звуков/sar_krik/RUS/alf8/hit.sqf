_obj = _this select 0;
_n = random 80;

_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and Resistance countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};


if (_obj distance player < 100) then {Switch (floor (random 37)) do {
case 0: {_obj say "RUS_alf8_hit_209"};
case 1: {_obj say "RUS_alf8_hit_210"};
case 2: {_obj say "RUS_alf8_hit_211"};
case 3: {_obj say "RUS_alf8_hit_212"};
case 4: {_obj say "RUS_alf8_hit_213"};
case 5: {_obj say "RUS_alf8_hit_214"};
case 6: {_obj say "RUS_alf8_hit_215"};
case 7: {_obj say "RUS_alf8_hit_225"};
case 8: {_obj say "RUS_alf8_hit_226"};
case 9: {_obj say "RUS_alf8_hit_227"};
case 10: {_obj say "RUS_alf8_hit_228"};
case 11: {_obj say "RUS_alf8_hit_229"};
case 12: {_obj say "RUS_alf8_hit_231"};
case 13: {_obj say "RUS_alf8_hit_231"};
case 14: {_obj say "RUS_alf8_hit_232"};
case 15: {_obj say "RUS_alf8_hit_233"};
case 16: {_obj say "RUS_alf8_hit_234"};
case 17: {_obj say "RUS_alf8_hit_235"};
case 18: {_obj say "RUS_alf8_hit_236"};
case 19: {_obj say "RUS_alf8_hit_237"};
case 20: {_obj say "RUS_alf8_hit_238"};
case 21: {_obj say "RUS_alf8_hit_275"};
case 22: {_obj say "RUS_alf8_hit_276"};
case 23: {_obj say "RUS_alf8_hit_277"};
case 24: {_obj say "RUS_alf8_hit_279"};
case 25: {_obj say "RUS_alf8_hit_280"};
case 26: {_obj say "RUS_alf8_hit_281"};
case 27: {_obj say "RUS_alf8_hit_282"};
case 28: {_obj say "RUS_alf8_hit_283"};
case 29: {_obj say "RUS_alf8_hit_284"};
case 30: {_obj say "RUS_alf8_hit_285"};
case 31: {_obj say "RUS_alf8_hit_286"};
case 32: {_obj say "RUS_alf8_hit_287"};
case 33: {_obj say "RUS_alf8_hit_288"};
case 34: {_obj say "RUS_alf8_hit_289"};
case 35: {_obj say "RUS_alf8_hit_290"};
case 36: {_obj say "RUS_alf8_hit_291"};
}
};
exit