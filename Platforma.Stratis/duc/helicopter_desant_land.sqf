/*
	Автор: BETEP3526, PIONEER
	Динамическое создание техники с пехотой, с последующим десантированием

	["start","end",180,"end2","end3",true] execvm "duc\helicopter_desant_land.sqf";

	1 - стартовая позиция (маркер)
	2 - позиция десантирования (маркер)
	3 - азимут
	4 - позиция конечная для вертолёта. При подлете удаляется
	5 - позиция конечная для пехоты
	6 - будут ли ловушки и дыми true\false (опциаонально)

	west
	resistance
	east
*/

if (!isServer) exitWith {};

params ["_startpos","_endpos","_dir","_endpoheli","_endposSquad",["_fire",false]];

_group = createGroup west;
_group_desant = createGroup west;

// Создаём контрмеры для цикличного использования
private _flares = {
    while {alive driver _this && {!(isTouchingGround _this)}} do {    
        sleep 3.5;
        _this action ["useWeapon", _this, driver _this, 0];
    };
};
// Создаём контрмеры для цикличного использования на отходе
private _flares2 = {
    while {alive driver _this} do {    
        sleep 3.5;
        _this action ["useWeapon", _this, driver _this, 0];
    };
};

// вертолёт
_vehicle =  createVehicle ["B_Heli_Transport_01_F",getmarkerpos _startPos, [], 0, "FLY"];
createVehicleCrew _vehicle;
private _group = group driver _vehicle;
_group addVehicle _vehicle;

_vehiclepad = "Land_vehiclepadEmpty_F" createVehicle getmarkerpos _endpos;

// отделение пехоты
"rhsusf_army_ucp_squadleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_teamleader" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_rifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_autorifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_grenadier" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_autorifleman" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];
"rhsusf_army_ucp_grenadier" createUnit [getmarkerPos _startPos, _group_desant,"this moveInCargo _vehicle;"];


_vehicle setdir _dir;

[_group,_endpos,"TR UNLOAD","FULL"] call PL_fnc_Waypoint;

// поддержка VCOM
_group setVariable ["VCM_Skilldisable",true];
_group setVariable ["VCM_NOFLANK",true];
_group_desant setVariable ["VCM_Skilldisable",true];
_group_desant setVariable ["VCM_NOFLANK",true];

waitUntil {_vehicle distance (getmarkerpos _endpos) < 300};

if (_fire) then {_vehicle spawn _flares};

waitUntil {_vehicle distance (getmarkerpos _endpos) > 100};
if (_fire) then {_vehicle spawn _flares2};

waitUntil {isTouchingGround _vehicle};

[_group,_endpoheli] call PL_fnc_Waypoint;
[_group_desant,_endposSquad] call PL_fnc_Waypoint;

if (_fire) then {
// Выкидываем дымы по кругу
private _dir = 0;
private _a = 0;
while{_a < 16}do{
_sPos = [((getPos _vehicle) select 0) + (sin _dir) * 12, ((getPos _vehicle) select 1) + (cos _dir) * 12, ((getPos _vehicle) select 2)];
_smoke1 = "SmokeShell" createVehicle _sPos;
_a = _a + 1;
_dir = _dir + (360 / 16);
};
};

waitUntil {_vehicle distance (getmarkerpos _endpoheli) < 200};
{_vehicle deleteVehicleCrew _x} forEach crew _vehicle;
deleteVehicle _vehicle;
deleteGroup _group;


