/*
	Автор: ArtyomAbramov
	Мод: Realistic Units Ragdoll
	https://steamcommunity.com/sharedfiles/filedetails/?id=673827546
*/

if ((_this select 1) == "unconscious") then 
{
	[(_this select 0),(_this select 1)] spawn 
	{
		inGameUISetEventHandler ["Action","true"];
		waitUntil {(animationState (_this select 0)) != "unconscious"};
		sleep 0.6;
		inGameUISetEventHandler ["Action","false"];
		if (((animationState (_this select 0) find "unconsciousface") != -1) && (vectorMagnitude velocityModelSpace player > 0.08)) then 
		{
			[[(_this select 0), {_this playMoveNow "unconsciousoutprone"}], "BIS_fnc_spawn", true, false, false] call BIS_fnc_MP; 
		}
	};
	[(_this select 0),(_this select 1)] spawn 
	{
		while {(animationState (_this select 0)) == "unconscious"} do 
		{
			sleep 0.1;
			if !(simulationEnabled (_this select 0)) exitWith 
			{
				[(_this select 0)] spawn 
				{
					waitUntil {(simulationEnabled (_this select 0))};
					waitUntil {(animationState (_this select 0)) != "unconscious"};
					_p = player; _v = createAgent ["VirtualMan_F",[0,0,0],[],0,"NONE"]; selectPlayer _v;  selectPlayer _p
				}
			}
		}
	};
	[(_this select 0),"ColorCorrections", 1900, damage (_this select 0)] spawn 
	{
		params ["_unt", "_name", "_priority", "_dmg", "_action", "_handle"];
		_tempAction = _unt addAction ["","",[],1000,true,false,"DefaultAction","((_this == _target) && (animationState _this == 'unconscious'))"];
		while {
			_handle = ppEffectCreate [_name, (_priority + (round (random 96)))];
			_handle < 0
		} do {
			_priority = _priority + 1;
		};
		_handle ppEffectEnable true;
		_handle ppEffectAdjust 
		[
			1, 
			1, 
			0, 
			[0, 0, 0, 1], 
			[1, 1, 1, 0], 
			[0.299, 0.587, 0.114, 0],
			[1 - _dmg, 1 - _dmg, 0, 0, 0, 0, 0]
		];
		_handle ppEffectCommit 1;
		_handle ppEffectEnable true;
		_handle ppEffectForceInNVG true;
		sleep 3;
		_handle ppEffectAdjust 
		[
			1, 
			1, 
			0, 
			[0, 0, 0, 0], 
			[1, 1, 1, 1], 
			[0.299, 0.587, 0.114, 0],
			[0, 0, 0, 0, 0, 0, 0]
		];
		_handle ppEffectEnable true;
		_handle ppEffectForceInNVG true;
		_handle ppEffectCommit (1 + (60 * _dmg));
		waitUntil {sleep 1; ((ppEffectCommitted _handle) || (isNull (_this select 0)) || (!alive (_this select 0)))};
		_handle ppEffectEnable false;
		ppEffectDestroy _handle;
		_unt removeAction _tempAction;
	};
	[0,"",1,1] call BIS_fnc_fadeEffect;
	[1,"",13,1] call BIS_fnc_fadeEffect;
	/* 
	[(_this select 0),"DynamicBlur", 490, (damage (_this select 0))] spawn 
	{
		params ["_unt", "_name", "_priority", "_dmg", "_handle"];
		while {
			_handle = ppEffectCreate [_name, (_priority + (round (random 96)))];
			_handle < 0
		} do {
			_priority = _priority + 1;
		};
		((findDisplay 46) displayCtrl 1202) ctrlSetTextColor [0,0,0,1];
		_handle ppEffectEnable true;
		_handle ppEffectAdjust [round (1 + (_dmg * 6))];
		_handle ppEffectCommit 0;
		_handle ppEffectEnable true;
		_handle ppEffectAdjust [0];
		_handle ppEffectCommit (13 + random 6);
		((findDisplay 46) displayCtrl 1202) ctrlSetTextColor [0,0,0,0.2];
		waitUntil {sleep 1; ((ppEffectCommitted _handle) || (isNull (_this select 0)) || (!alive (_this select 0)))};
		_handle ppEffectEnable false;
		ppEffectDestroy _handle;
		};
		 */
};