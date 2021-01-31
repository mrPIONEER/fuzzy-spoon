if (didJIP) exitWith {};

[] spawn PL_fnc_Nospeed;
[] spawn PL_fnc_nouniform;
[] spawn PL_fnc_NoSnake;
[] spawn PL_fnc_No3D;
[] spawn PL_fnc_FrendlyFire;

// БРИФИНГ
player createDiaryRecord ["Diary", [localize "STRD_Plan_title4", localize "STRD_Plan4"]];
player createDiaryRecord ["Diary", [localize "STRD_Plan_title3", localize "STRD_Plan3"]];
player createDiaryRecord ["Diary", [localize "STRD_Plan_title2", localize "STRD_Plan2"]];
player createDiaryRecord ["Diary", [localize "STRD_Plan_title1", localize "STRD_Plan1"]];

// Блюр
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6]; 
"dynamicBlur" ppEffectCommit 0;  
"dynamicBlur" ppEffectAdjust [0.0]; 
"dynamicBlur" ppEffectCommit 5;