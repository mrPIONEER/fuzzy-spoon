class CfgPatches
{
	class ifa3_screams {
		author = "IFA3 liberation";
		authors[] = {"PIONEER"};
		url = "http://red-bear.ru";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.90;
		requiredAddons[] = {"WW2_Core_c_ZZZ_LastLoaded_c"};
	};
};

class CfgFunctions {
	class ifa3_screams {
		class ifa3_screams_fn {
			file = "ifa3_screams\functions";

			class GerHit {};
			class UsaHit {};
			class SovHit {};
			class Death {};
		};
	};
};

class CBA_Extended_EventHandlers_base;

class CfgVehicles
{
	class SoldierEB;
	class B_Soldier_base_F;
	class O_Soldier_base_F;
	
	
	////////////////// IF LITE //////////////////
	
	// нем
	class LIB_GER_Soldier_base : B_Soldier_base_F {
		class EventHandlers 
		{
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers_base {
				hit = "_this call ifa3_screams_fnc_GerHit";
				Killed = "_this call ifa3_screams_fnc_Death";
			};
		};
	};
	
	// сша
	class LIB_US_Soldier_base : B_Soldier_base_F {
		class EventHandlers 
		{
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers_base {
				hit = "_this call ifa3_screams_fnc_UsaHit";
				Killed = "_this call ifa3_screams_fnc_Death";
			};
		};
	};
	
	// брит
	class LIB_UK_Soldier_base : B_Soldier_base_F {
		class EventHandlers 
		{
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers_base {
				hit = "_this call ifa3_screams_fnc_UsaHit";
				Killed = "_this call ifa3_screams_fnc_Death";
			};
		};
	};

	// сов
	class LIB_SOV_Soldier_base : O_Soldier_base_F {
		class EventHandlers 
		{
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers_base {
				hit = "_this call ifa3_screams_fnc_SovHit";
				Killed = "_this call ifa3_screams_fnc_Death";
			};
		};
	};

	// гражданские
	class LIB_Civilian_Base : SoldierEB {
		class EventHandlers 
		{
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers_base {
				Killed = "_this call ifa3_screams_fnc_Death";
			};
		};
	};
	

	////////////////// FIN //////////////////
	/*
	class B_NORTH_soldier_base : B_Soldier_base_F {
		scope=1;
		
		class EventHandlers : EventHandlers 
		{
			class ifa3_screams_EH {
				Killed = "_this call ifa3_screams_fnc_Death";
			};
		};
	};	
	*/
	
};

class CfgSounds
{
	sounds[] = {};
	#include "\ifa3_screams\ger\hit\1\sound.h"
	#include "\ifa3_screams\ger\hit\2\sound.h"
	#include "\ifa3_screams\ger\hit\3\sound.h"
	
	#include "\ifa3_screams\ger\death\1\sound.h"
	#include "\ifa3_screams\ger\death\2\sound.h"

	#include "\ifa3_screams\rus\alf1\RUS_alf1.h"
	#include "\ifa3_screams\rus\alf2\RUS_alf2.h"
	#include "\ifa3_screams\rus\alf3\RUS_alf3.h"
	#include "\ifa3_screams\rus\alf4\RUS_alf4.h"
	#include "\ifa3_screams\rus\alf5\RUS_alf5.h"
	#include "\ifa3_screams\rus\alf6\RUS_alf6.h"
	#include "\ifa3_screams\rus\alf7\RUS_alf7.h"
	#include "\ifa3_screams\rus\alf8\RUS_alf8.h"
	#include "\ifa3_screams\rus\alf9\RUS_alf9.h"
	
	#include "\ifa3_screams\usa\hit\1\sound.h"
	#include "\ifa3_screams\usa\hit\2\sound.h"
	#include "\ifa3_screams\usa\hit\3\sound.h"
	#include "\ifa3_screams\usa\hit\4\sound.h"
	#include "\ifa3_screams\usa\hit\5\sound.h"
	#include "\ifa3_screams\usa\hit\6\sound.h"
	#include "\ifa3_screams\usa\hit\7\sound.h"
	
	#include "\ifa3_screams\usa\death\1\sound.h"
	#include "\ifa3_screams\usa\death\2\sound.h"
	#include "\ifa3_screams\usa\death\3\sound.h"
	#include "\ifa3_screams\usa\death\4\sound.h"
	#include "\ifa3_screams\usa\death\5\sound.h"
	#include "\ifa3_screams\usa\death\6\sound.h"
	#include "\ifa3_screams\usa\death\7\sound.h"
};