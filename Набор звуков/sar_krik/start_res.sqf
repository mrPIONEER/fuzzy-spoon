// == Динамические крики от СТУДИИ САРМАТ ==

// ОСНОВНАЯ ЧАСТЬ
// КАЖДЫЙ case - НОВЫЙ ГОЛОС

{ 
if (side _x == resistance) then {Switch (floor (random 4)) do {
case 0: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RES\hit.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RES\fired.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RES\killed.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RES\res.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\RES.sqf";
};
case 1: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RES\hit_ar.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RES\fired_ar.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RES\killed.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RES\ar.sqf";
p=[_x] execvm "\sar_krik\patch2\SC\RES.sqf";
};
case 2: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RES\hit_behemoot.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RES\fired_behemoot.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RES\killed_behemoot.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RES\behemoot.sqf";
};
case 3: {
_EH = _x AddEventHandler ["hit",{_this execvm "\sar_krik\RES\hit_go.sqf"}];
_EH = _x AddEventHandler ["fired",{_this execvm "\sar_krik\RES\fired_go.sqf"}];
_EH = _x AddEventHandler ["killed",{_this execvm "\sar_krik\RES\killed.sqf"}];
p=[_x] execvm "\sar_krik\patch1\RES\go.sqf";
};
}
};
}  forEach allUnits;


if (true) exitWith {};
