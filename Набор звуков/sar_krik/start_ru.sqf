// == ƒËÌ‡ÏË˜ÂÒÍËÂ ÍËÍË ÓÚ —“”ƒ»» —¿–Ã¿“ ==


// Œ—ÕŒ¬Õ¿ﬂ ◊¿—“‹
//  ¿∆ƒ€… case - ÕŒ¬€… √ŒÀŒ—

{
if (side _x == East) then {Switch (floor (random 9)) do {
// 1 √ŒÀŒ—
case 0: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf1\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf1\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf1\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf1.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf1.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf1.sqf"; // ‰Îˇ ÔÓ‰ÒÚ‚ÓÎ¸ÌËÍÓ‚
};
// 2 √ŒÀŒ—
case 1: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf2\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf2\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf2\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf2.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf2.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf2.sqf";
};
case 2: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf3\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf3\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf3\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf3.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf3.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf3.sqf";
};
case 3: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf4\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf4\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf4\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf4.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf4.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf4.sqf";
};
case 4: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf5\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf5\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf5\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf5.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf5.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf5.sqf";
};
case 5: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf6\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf6\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf6\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf6.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf6.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf6.sqf";
};
case 6: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf7\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf7\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf7\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf7.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf7.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf7.sqf";
};
case 7: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf8\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf8\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf8\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf8.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf8.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf8.sqf";
};
case 8: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RUS\alf9\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RUS\alf9\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RUS\alf9\Death.sqf"}];
//_EH = _x addeventhandler ["HandleDamage",{_this execvm "\sar_krik\patch3\RUS\alf9.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RUS\Asrc\alf9.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\alf9.sqf";
};
}
};
}  forEach allUnits;

if (true) exitWith {};