/*
	Скрипт бомбордировки Штуки
*/


bomb01 setdir 0;
_loc =  getposATL bomb01;

_posX = (_loc select 0);
_posY = (_loc select 1);
_posZ = (_loc select 2);
_spawnpos = [_posX +50000, _posY +50000, _posZ +50000];
_marker_wp = [_posX, _posY -7000, _posZ +1000];
_offset = [495,185,2900];
_worldPos = bomb01 modelToWorld _offset;

Stuka = createVehicle ["LIB_Ju87",_spawnpos,[], 0, "CAN_COLLIDE"];
Stuka setVariable ["BIS_enableRandomization", false];
Stuka setVariable ["IFA3_sirenEnabled",1];
Stuka setPosATL _worldPos;
[Stuka, -90, 0] call BIS_fnc_setPitchBank;
Stuka setVelocity [100, 0, 0];

sleep 5;

Stuka setVariable ["IFA3_sirenon",true];

sleep 15;

createVehicleCrew Stuka;
_group_pilot = group commander Stuka;
driver Stuka setskill 1;
driver Stuka forceweaponfire ["LIB_SC500_bomb_mount","fullauto"];
driver Stuka forceweaponfire ["LIB_SC50_bomb_mount","fullauto"];
driver Stuka disableAI "checkvisible";
_group_pilot setBehaviour "CARELESS";
_group_pilot setCombatMode "BLUE";

sleep 1;

_waypoint = _group_pilot addWaypoint [_marker_wp, 100];
_waypoint setWPPos _marker_wp;
_waypoint setWaypointStatements ["true", ""];
_waypoint setWaypointType "MOVE";
_waypoint setWaypointSpeed "FULL";
_waypoint setWaypointCombatMode "BLUE";
_waypoint setWaypointCompletionRadius 100;


sleep 8;

Stuka setVariable ["IFA3_sirenon",false];

waitUntil {sleep 1; (Stuka distance player) > 5000 };
{Stuka deleteVehicleCrew _x} forEach crew Stuka;
deleteVehicle Stuka; 
deleteGroup _group_pilot;