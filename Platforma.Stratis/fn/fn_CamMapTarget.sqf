/*
	Автор: PIONEER
	Перемещение карты.
	
	["start",2,0.1] call PL_fnc_CamMapTarget;
	
	1 - позиция (маркер)
	2 - время перехода
	3 - зум
*/

params ["_marker","_time","_zoom"];

mapAnimAdd [_time, _zoom, markerPos _marker];
mapAnimCommit;