/*
	Автор: ArtyomAbramov
	Мод: Realistic Units Ragdoll
	https://steamcommunity.com/sharedfiles/filedetails/?id=673827546
*/

(_this select 0) setBleedingRemaining ((getBleedingRemaining (_this select 0)) + ((_this select 2) * (10 + random 90)));

[(_this select 0),"ColorCorrections", 1600, (damage player)] spawn 
{
	params ["_unt", "_name", "_priority", "_dmg", "_handle"];
	while {
		_handle = ppEffectCreate [_name, (_priority + (round (random 96)))];
		_handle < 0
	} do {
		_priority = _priority + 1;
	};
	_handle ppEffectEnable true;
	_handle ppEffectAdjust [0, 0, 0, [0, 0, 0, 1], [0, 0, 0, 0], [0, 0, 0, 0],[1, 1, 0, 0, 0, 0.2, 0.8]];
	_handle ppEffectCommit 0;
	_handle ppEffectEnable true;
	_handle ppEffectForceInNVG true;
	_handle ppEffectAdjust 
	[
		1, 
		1, 
		0, 
		[0, 0, 0, 0], 
		[1, 1, 1, 1], 
		[0.299, 0.587, 0.114, 0],
		[1, 1, 0, 0, 0, 0, 1]
	];
	_handle ppEffectEnable true;
	_handle ppEffectForceInNVG true;
	_handle ppEffectCommit (90 * _dmg);
	waitUntil {sleep 1; ((ppEffectCommitted _handle) || (isNull (_this select 0)) || (!alive (_this select 0)))};
	_handle ppEffectEnable false;
	ppEffectDestroy _handle;
};
