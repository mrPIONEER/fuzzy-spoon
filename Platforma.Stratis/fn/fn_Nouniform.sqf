/*
	Автор: Zealot
	Запрет на снятие униформы.
	
	[] spawn PL_fnc_Nouniform;
*/


_zlt_lockInvSlots = {
    waitUntil {!(isNull (findDisplay 602))};
    while {!(isNull (findDisplay 602))} do {// Keep the "uniform slot" control on lockdown. Else there are loop holes. No pun intended.
       ctrlEnable [6331, false];  
       sleep 0.001;
    };   
};  

if (!isDedicated && hasInterface) then {
    [] spawn {
       waitUntil {!(isNull player)};
       player addEventHandler ["inventoryOpened", {_this spawn _zlt_lockInvSlots;}];
    };
};