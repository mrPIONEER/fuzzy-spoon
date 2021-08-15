BIS_fn_createFireEffect = {
	private["_effect","_pos","_fire","_smoke"];
	private["_light","_brightness","_color","_ambient","_intensity","_attenuation"];

	_pos 	= _this select 0;
	_effect = _this select 1;

	_fire	= "";
	_smoke	= "";
	_light	= objNull;
	_color		= [1,0.85,0.6];
	_ambient	= [1,0.3,0];

	switch (_effect) do {
		case "FIRE_SMALL" : {
			_fire 	= "SmallDestructionFire";
			_smoke 	= "SmallDestructionSmoke";
			_brightness	= 0.8;
			_intensity	= 200;
			_attenuation	= [0,0,0,2.4];
		};
		case "FIRE_MEDIUM" : {
			_fire 	= "MediumDestructionFire";
			_smoke 	= "MediumDestructionSmoke";
			_brightness	= 1.0;
			_intensity	= 400;
			_attenuation	= [0,0,0,2];
		};
		case "FIRE_BIG" : {
			_fire 	= "BigDestructionFire";
			_smoke 	= "BigDestructionSmoke";
			_brightness	= 1.0;
			_intensity	= 1600;
			_attenuation	= [0,0,0,1.6];
		};
		case "SMOKE_SMALL" : {
			_smoke 	= "SmallDestructionSmoke";
		};
		case "SMOKE_MEDIUM" : {
			_smoke 	= "MediumSmoke";
		};
		case "SMOKE_BIG" : {
			_smoke 	= "BigDestructionSmoke";
		};
	};

	if (_fire != "") then {
		_eFire = "#particlesource" createVehicleLocal _pos;
		_eFire setParticleClass _fire;
		_eFire setPosATL _pos;
	};

	if (_smoke != "") then {
		_eSmoke = "#particlesource" createVehicleLocal _pos;
		_eSmoke setParticleClass _smoke;
		_eSmoke setPosATL _pos;
	};


};

[[(getposATLVisual f1 select 0), (getposATLVisual f1 select 1), 0.5], "FIRE_SMALL"] call BIS_fn_createFireEffect;
[[(getposATLVisual f2 select 0), (getposATLVisual f2 select 1), 0], "FIRE_MEDIUM"] call BIS_fn_createFireEffect;
[[(getposATLVisual f3 select 0), (getposATLVisual f3 select 1), 0], "FIRE_BIG"] call BIS_fn_createFireEffect;


