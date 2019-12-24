

if (isnil "RES") then {p=[]execVM "sar_krik\start_res.sqf"};
if (isnil "USA") then {p=[]execVM "sar_krik\start_ru.sqf"};
if (isnil "RUS") then {p=[]execVM "sar_krik\start_usa.sqf"};


if (true) exitWith {};