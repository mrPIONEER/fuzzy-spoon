/*
	Автор: Toksa
	Движение танка по заданному пути
	
    [tank1D,pathunit1,tank1L] spawn PL_fnc_TankPath
	
	1 - водитель
	2 - бот для сопровождения
	3 - заряжающий танка

    В инит вейпоинта боту сопровождения в каждый вейпоинт
    this setDestination [(waypointposition [group this,(currentwaypoint group this) + 1]) , "LEADER DIRECT", true];

    В последний вейпоинт бота
    dostop this;deleteVehicle this;
*/

params ["_tankdriver","_pathunit","_tankloader"];

_tank = vehicle _tankdriver;
_tankloader disableai "TARGET";
_tankloader disableai "RADIOPROTOCOL";
_tankdriver disableai "FSM";
_tankdriver disableai "CHECKVISIBLE";

dostop _pathunit;
_pathunit disableai "FSM";
_pathunit disableai "AIMINGERROR";
_pathunit disableai "SUPPRESSION";
_pathunit disableai "COVER";
_pathunit disableai "AUTOCOMBAT";
_pathunit disableAI "MINEDETECTION";
_pathunit disableAI "TARGET";
_pathunit disableAI "CHECKVISIBLE";
_pathunit setunitpos "UP";
group _pathunit setBehaviour "CARELESS";
_pathunit disableCollisionWith _tank;
_pathunit setAnimSpeedCoef 0.7;
_pathunit hideobjectglobal true;
_pathunit setCaptive true;
_pathunit allowDamage false;

[_tank,_pathunit,_tankloader] spawn {
    params ["_tank","_pathunit","_tankloader"];
    while {true} do {
        if (!alive _tank) exitwith {};
        if (!alive _pathunit) then {};
        if (_pathunit distance _tank> 10) then {_pathunit setAnimSpeedCoef 0} else {_pathunit setAnimSpeedCoef 0.7;};
        if (_pathunit distance _tank< 6) then {_pathunit setAnimSpeedCoef 1};
        _tank setEffectiveCommander _tankloader;
        sleep 0.5;
    };
};

[_tank,_pathunit,_tankdriver] spawn {
    params ["_tank","_pathunit","_tankdriver"];  
    _dir=[0];
    _deg=1.0;
    while {true} do {
    _cansee=[_tank, "IFIRE"] checkVisibility [[getposworld _tank select 0,getposworld _tank select 1,(getposworld _tank select 2) + 2], [getposworld player select 0,getposworld player select 1,(getposworld player select 2) + 0.25]];
    if ((count (worldToScreen getpos _tank) == 2) && _cansee > 0) then {_deg=0.5} else {_deg=6};

    if (!alive _tank OR !alive _tankdriver OR !(_tankdriver in _tank)) exitwith {
        deleteVehicle _pathunit;
    };

    switch (true) do {
        case ((_tank distance _pathunit)< 5): {_tank sendSimpleCommand "STOP";_dir=[0];};
        case ((_tank getreldir _pathunit) < 67.5555 && (_tank getreldir _pathunit) > 22.5555): {_dir=[vectorDir _tank , _deg, 2] call BIS_fnc_rotateVector3D;};
        case ((_tank getreldir _pathunit) < 342.5555 && (_tank getreldir _pathunit) > 297.5555): {_dir=[vectorDir _tank , -(_deg), 2] call BIS_fnc_rotateVector3D;};
        case ((_tank getreldir _pathunit) < 22.5555 OR (_tank getreldir _pathunit) > 342.5555): {_dir=[0];_tank sendSimpleCommand "SLOW"; };
        case ((_tank getreldir _pathunit) < 202.5555 && (_tank getreldir _pathunit) > 157.5555): {_dir=[0];_tank sendSimpleCommand "BACK";};
        case ((_tank getreldir _pathunit) < 157.5555 && (_tank getreldir _pathunit) > 112.5555): {_dir=[vectorDir _tank , _deg, 2] call BIS_fnc_rotateVector3D;};
        case ((_tank getreldir _pathunit) < 247.5555 && (_tank getreldir _pathunit) > 202.5555): {_dir=[vectorDir _tank , -(_deg), 2] call BIS_fnc_rotateVector3D;};
        case ((_tank getreldir _pathunit) < 112.5555 && (_tank getreldir _pathunit) > 67.5555): {_dir=[vectorDir _tank , _deg, 2] call BIS_fnc_rotateVector3D;};
        case ((_tank getreldir _pathunit) < 292.5555 && (_tank getreldir _pathunit) > 247.5555): {_dir=[vectorDir _tank , -(_deg), 2] call BIS_fnc_rotateVector3D;};
    };
    if (count _dir==3) then {
        _tank setVectorDirAndUp [_dir,vectorup _tank];  
        _tank setvelocityModelSpace [velocityModelSpace _tank select 0,velocityModelSpace _tank select 1,(velocityModelSpace _tank select 2)];
    };
    if (_deg==1.0) then {
        sleep 0.001;
     } else {sleep 0.01};
    }; 
};