// Активация на выстрел из чего либо, резистенс
// имя_юнита AddEventHandler ["fired",{_this execvm "\sar_krik\res\fired.sqf"}]

_obj = _this select 0;
_wepn = _this select 1;
_wep = _this select 4;
_n = random 80;

if (
(

(_wepn == "RPG18") or 
 (_wepn == "RPG7") or 
 (_wepn == "Igla") or 
 (_wep == "G_40mm_HE") or  
(_wepn == "Throw") or 
 (_wepn == "MetisLauncher")  or 
 (_wepn == "Throw") or 
(_wepn == "RPG7V") or
 (_wepn == "Strela") or 
(_wepn == "Stinger") or
(_wepn == "Javelin") or 
(_wepn == "SMAW") or 
(_wepn == "M136") 

)  and (_n <70)) 
then {
Switch (floor (random 35)) do {
case 0: {_obj say "RES_fired_1"};
case 1: {_obj say "RES_fired_2"};
case 2: {_obj say "RES_fired_3"};
case 3: {_obj say "RES_fired_4"};
case 4: {_obj say "RES_fired_5"};
case 5: {_obj say "RES_fired_6"};
case 6: {_obj say "RES_fired_7"};
case 7: {_obj say "RES_fired_8"};
case 8: {_obj say "RES_fired_9"};
case 9: {_obj say "RES_fired_11"};
case 10: {_obj say "RES_fired_12"};
case 11: {_obj say "RES_fired_13"};
case 12: {_obj say "RES_fired_14"};
case 13: {_obj say "RES_fired_15"};
case 14: {_obj say "RES_fired_16"};
case 15: {_obj say "RES_fired_17"};
case 16: {_obj say "RES_fired_10"};
case 17: {_obj say "ar1"};
case 18: {_obj say "ar2"};
case 19: {_obj say "ar3"};
case 20: {_obj say "ar4"};
case 21: {_obj say "ar5"};
case 22: {_obj say "ar6"};
case 23: {_obj say "ar7"};
case 24: {_obj say "ar8"};
case 25: {_obj say "ar9"};
case 26: {_obj say "ar10"};
case 27: {_obj say "ar11"};
case 28: {_obj say "ar12"};
case 29: {_obj say "ar13"};
case 30: {_obj say "ar14"};
case 31: {_obj say "ar15"};
case 32: {_obj say "ar16"};
case 33: {_obj say "ar17"};
case 34: {_obj say "ar18"};
}
};
exit