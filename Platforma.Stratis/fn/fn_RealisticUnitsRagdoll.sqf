/*
	Автор: ArtyomAbramov
	Мод: Realistic Units Ragdoll
	https://steamcommunity.com/sharedfiles/filedetails/?id=673827546
*/

if !isServer exitWith {};
waitUntil {time > 0};
if (!(isNil "AARR_fnc_interrupt")) exitWith {diag_log "@AARR: Interrupted"};
aarr_fnc_hit = compileFinal preprocessFileLineNumbers "fn\AARR\fn_hit.sqf";
aarr_fnc_rag = compileFinal preprocessFileLineNumbers "fn\AARR\fn_rag.sqf";
aarr_fnc_unc = compileFinal preprocessFileLineNumbers "fn\AARR\fn_unc.sqf";
aarr_fnc_input = compileFinal preprocessFileLineNumbers "fn\AARR\fn_input.sqf";
publicVariable "aarr_fnc_hit";
publicVariable "aarr_fnc_rag";
publicVariable "aarr_fnc_input";
[[],"aarr_fnc_input",true,true] call BIS_fnc_MP; 
[{
	while {true} do
	{
		{
			sleep (9/diag_fps);
			if ((local _x) && (isNil {_x getVariable "aarr_ragdolled"})) then 
			{
				_x setVariable ["aarr_ragdolled",true,true];
				if ((isPlayer _x) && (({["ace_", _x] call BIS_fnc_inString} count activatedAddons) < 10)) then 
				{
					_x addEventHandler ["Hit",{_this spawn aarr_fnc_hit; call aarr_fnc_rag}];
					_x addEventHandler ["AnimChanged",{_this spawn  aarr_fnc_unc}];
				}
				else
				{
					_x addEventHandler ["Hit",{call aarr_fnc_rag}];
				}
			}
		} forEach allUnits;
		sleep (100/diag_fps);
	}
},"BIS_fnc_spawn",true,true] call BIS_fnc_MP; 