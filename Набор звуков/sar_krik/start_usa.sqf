// == ƒËÌ‡ÏË˜ÂÒÍËÂ ÍËÍË ÓÚ —“”ƒ»» —¿–Ã¿“ ==


// Œ—ÕŒ¬Õ¿ﬂ ◊¿—“‹
//  ¿∆ƒ€… case - ÕŒ¬€… √ŒÀŒ—
{
if (side _x == West) then {Switch (floor (random 9)) do {
// 1 √ŒÀŒ—
case 0: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_BRIAN.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_BRIAN.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_BRIAN.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\BRIAN.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\BRIAN.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\BRIAN.sqf";
};
// 2 √ŒÀŒ—
case 1: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_DAN.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_DAN.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_DAN.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\DAN.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\DAN.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\DAN.sqf";
};
case 2: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_DUSAN.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_DUSAN.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_DUSAN.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\DUSAN.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\DUSAN.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\DUSAN.sqf";
};
case 3: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_HOWARD.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_HOWARD.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_HOWARD.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\HOWARD.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\HOWARD.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\HOWARD.sqf";
};
case 4: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_JEFF.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_JEFF.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_JEFF.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\JEFF.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\JEFF.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\JEFF.sqf";
};
case 5: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_MATHEW.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_MATHEW.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_MATHEW.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\MATHEW.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\MATHEW.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\MATHEW.sqf";
};
case 6: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_ROBERTPOLO.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_ROBERTPOLO.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_ROBERTPOLO.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\ROBERTPOLO.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\ROBERTPOLO.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\ROBERTPOLO.sqf";
};
case 7: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_RUSSEL.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_RUSSEL.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_RUSSEL.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\RUSSELL.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\RUSSEL.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\RUSSEL.sqf";
};
case 8: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\USA\hit\hit_RYAN.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\USA\fired\fired_RYAN.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\USA\Death\Death_RYAN.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\USA\RYAN.sqf"}];
p=[_x] execvm "\sar_krik\patch1\underfire\Ascr\RYAN.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\RYAN.sqf";
};
}
};
}  forEach allUnits;

if (true) exitWith {};
