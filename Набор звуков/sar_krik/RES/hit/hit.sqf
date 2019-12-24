// Скрипт криков ранения, резистенс
// имя_юнита AddEventHandler ["hit",{_this execvm "\sar_krik\res\hit.sqf"}]


_obj = _this select 0;
_n = random 80;



if (_n <70) then {Switch (floor (random 32)) do {
case 0: {_obj say "RES_hit_1"};
case 1: {_obj say "RES_hit_2"};
case 2: {_obj say "RES_hit_3"};
case 3: {_obj say "RES_hit_4"};
case 4: {_obj say "RES_hit_5"};
case 5: {_obj say "RES_hit_6"};
case 6: {_obj say "RES_hit_7"};
case 7: {_obj say "RES_hit_8"};
case 8: {_obj say "RES_hit_9"};
case 9: {_obj say "RES_hit_10"};
case 10: {_obj say "RES_hit_11"};
case 12: {_obj say "RES_hit_12"};
case 13: {_obj say "RES_hit_13"};
case 14: {_obj say "ar1"};
case 15: {_obj say "ar2"};
case 16: {_obj say "ar3"};
case 17: {_obj say "ar4"};
case 18: {_obj say "ar5"};
case 19: {_obj say "ar6"};
case 20: {_obj say "ar7"};
case 21: {_obj say "ar8"};
case 22: {_obj say "ar9"};
case 23: {_obj say "ar10"};
case 24: {_obj say "ar11"};
case 25: {_obj say "ar12"};
case 26: {_obj say "ar13"};
case 27: {_obj say "ar14"};
case 28: {_obj say "ar15"};
case 29: {_obj say "ar16"};
case 30: {_obj say "ar17"};
case 31: {_obj say "ar18"};
}
};
exit