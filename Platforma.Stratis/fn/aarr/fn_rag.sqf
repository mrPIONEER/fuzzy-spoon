/*
	Автор: ArtyomAbramov
	Мод: Realistic Units Ragdoll
	https://steamcommunity.com/sharedfiles/filedetails/?id=673827546
*/

if (((_this select 2) > 0.23) && (vehicle (_this select 0) == (_this select 0)) && (alive (_this select 0)) && ((animationState (_this select 0) find "unconscious") == -1)) then 
{
	if isNull ((_this select 0) getVariable ["aarr_rag",objNull]) then 
	{
		private _rag = "Land_KartSteertingWheel_01_F" createVehicleLocal [0,0,0];
		_rag spawn {_this setObjectTexture [0, ""]};
		(_this select 0) setVariable ["aarr_rag",_rag];
		[((nearestObjects [(_this select 0),["All"],6]) select [1,6]),_rag] spawn {{(_this select 1) disableCollisionWith _x} count (_this select 0)};
		_rag setMass 1e+010;
		(_this select 0) allowDamage false;
		_rag setPosATL ((_this select 0) modelToWorldVisual (((_this select 0) selectionPosition "spine3") vectorAdd [0,0.09,0.18]));
		(_this select 0) setVelocityModelSpace (velocityModelSpace (_this select 0) vectorMultiply -0.618);
		_rag setVelocity [0,0,-6.18];
		[(_this select 0),_rag] spawn 
		{
			sleep (9/diag_fps);
			deleteVehicle (_this select 1);
			(_this select 0) allowDamage true;
			/*
			if !(isPlayer (_this select 0)) then 
			{
				(_this select 0) disableAI "FSM";
				_anim = animationState (_this select 0);
				waitUntil {sleep (9/diag_fps); ((animationState (_this select 0) find "unconscious") == -1)};
				(_this select 0) enableAI "FSM";
			};
			*/
		}
	}
};
nil