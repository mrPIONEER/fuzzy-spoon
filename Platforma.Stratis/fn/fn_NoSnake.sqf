/*
	Автор: GEORGE FLOROS GR. Правки: PIONEER
	Удаление кроликов и змей.
	
	[] spawn PL_fnc_NoSnake
*/

while {true} do {
	waitUntil {
	sleep 10; 
	{
	if (agent _x isKindOf "Snake_random_F" or agent _x isKindOf "Rabbit_F") then {deleteVehicle agent _x;};
	} forEach agents;
	true;
   };
};