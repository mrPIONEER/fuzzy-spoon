// Активация на выстрел из чего либо, резистенс
// имя_юнита AddEventHandler ["fired",{_this execvm "\sar_krik\res\fired_ar.sqf"}]

_obj = _this select 0;
_wepn = _this select 1;
_wep = _this select 4;
_n = random 80;
_ms = getPos _obj nearEntities [["Man"] , 250];
// Проверка на нахождения противника
if (west countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
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
Switch (floor (random 13)) do {
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
exit