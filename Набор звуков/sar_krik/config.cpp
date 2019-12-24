///////////////////////////////Default stuff, No changes here ///////////////////////////////////
#define true 1
#define false 0

#define VSoft 0
#define VArmor 1
#define VAir 2

#define private 0
#define protected 1
#define public 2

#define TEast 0
#define TWest 1
#define TGuerrila 2
#define TCivilian 3
#define TSideUnknown 4
#define TEnemy 5
#define TFriendly 6
#define TLogic 7

#define ReadAndWrite 0
#define ReadAndCreate 1
#define ReadOnly 2
#define ReadOnlyVerified 3
/////////////////////////////// ^^ Default Stuff ^^ ///////////////////////////////
class CfgPatches
{
	class  sarmat_krik
	{
		author = "[IMB]PIONEER";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.00;
		requiredAddons[] = {};
	};
};
class CfgFactionClasses
{
	 class sarmat_krik
	 {
	  displayName = "Logic";
	  side = TLogic ;
	 };
};
#define USA_krik "_this execVM (""\sar_krik\start_usa.sqf"")";
#define RU_krik "_this execVM (""\sar_krik\start_ru.sqf"")";
#define RES_krik "_this execVM (""\sar_krik\start_res.sqf"")";

class CfgVehicles
{
	class Logic;

	class RUS: Logic
	{
		displayName = "SAR krik - Russia";
		vehicleClass = "Modules";

		class EventHandlers
		{
			init = RU_krik
		};
	};

	class RES: Logic
	{
		displayName = "SAR krik - Resistance";
		vehicleClass = "Modules";

		class EventHandlers
		{
			init = RES_krik
		};
	};

	class USA: Logic
	{
		displayName = "SAR krik - NATO";
		vehicleClass = "Modules";

		class EventHandlers
		{
			init = USA_krik
		};
	};
};




class CfgSounds
{


#include "\sar_krik\patch1\USA_UN.h"
#include "\sar_krik\patch1\RUS_UN.h"
#include "\sar_krik\patch1\RES_UN.h"

#include "\sar_krik\patch2\GR.h"

#include "\sar_krik\RES\behemoot.h"
#include "\sar_krik\RES\go.h"
#include "\sar_krik\RUS\alf1\RUS_alf1.h"
#include "\sar_krik\RUS\alf2\RUS_alf2.h"
#include "\sar_krik\RUS\alf3\RUS_alf3.h"
#include "\sar_krik\RUS\alf4\RUS_alf4.h"
#include "\sar_krik\RUS\alf5\RUS_alf5.h"
#include "\sar_krik\RUS\alf6\RUS_alf6.h"
#include "\sar_krik\RUS\alf7\RUS_alf7.h"
#include "\sar_krik\RUS\alf8\RUS_alf8.h"
#include "\sar_krik\RUS\alf9\RUS_alf9.h"


class ar1 {
	name="ar1";
	sound[]={"\sar_krik\res\ar\ar1.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar2 {
	name="ar2";
	sound[]={"\sar_krik\res\ar\ar2.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar3 {
	name="ar3";
	sound[]={"\sar_krik\res\ar\ar3.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar4 {
	name="ar4";
	sound[]={"\sar_krik\res\ar\ar4.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar5 {
	name="ar5";
	sound[]={"\sar_krik\res\ar\ar5.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar6 {
	name="ar6";
	sound[]={"\sar_krik\res\ar\ar6.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar7 {
	name="ar7";
	sound[]={"\sar_krik\res\ar\ar7.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar8 {
	name="ar8";
	sound[]={"\sar_krik\res\ar\ar8.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar9 {
	name="ar9";
	sound[]={"\sar_krik\res\ar\ar9.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar10 {
	name="ar10";
	sound[]={"\sar_krik\res\ar\ar10.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar11 {
	name="ar11";
	sound[]={"\sar_krik\res\ar\ar11.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar12 {
	name="ar12";
	sound[]={"\sar_krik\res\ar\ar12.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar13 {
	name="ar13";
	sound[]={"\sar_krik\res\ar\ar13.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar14 {
	name="ar14";
	sound[]={"\sar_krik\res\ar\ar14.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar15 {
	name="ar15";
	sound[]={"\sar_krik\res\ar\ar15.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar16 {
	name="ar16";
	sound[]={"\sar_krik\res\ar\ar16.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar17 {
	name="ar17";
	sound[]={"\sar_krik\res\ar\ar17.ogg", db- 50, 1.0};
	titles[]={};
	};
class ar18 {
	name="ar18";
	sound[]={"\sar_krik\res\ar\ar18.ogg", db- 50, 1.0};
	titles[]={};
	};

class RES_Death_1 {
	name="RES_Death_1";
	sound[]={"\sar_krik\res\Death\RES_Death_1.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_Death_2 {
	name="RES_Death_2";
	sound[]={"\sar_krik\res\Death\RES_Death_2.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_Death_3 {
	name="RES_Death_3";
	sound[]={"\sar_krik\res\Death\RES_Death_3.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_Death_4 {
	name="RES_Death_4";
	sound[]={"\sar_krik\res\Death\RES_Death_4.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_1 {
	name="RES_fired_1";
	sound[]={"\sar_krik\res\fired\RES_fired_1.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_2 {
	name="RES_fired_2";
	sound[]={"\sar_krik\res\fired\RES_fired_2.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_3 {
	name="RES_fired_3";
	sound[]={"\sar_krik\res\fired\RES_fired_3.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_4 {
	name="RES_fired_4";
	sound[]={"\sar_krik\res\fired\RES_fired_4.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_5 {
	name="RES_fired_5";
	sound[]={"\sar_krik\res\fired\RES_fired_5.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_6 {
	name="RES_fired_6";
	sound[]={"\sar_krik\res\fired\RES_fired_6.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_7 {
	name="RES_fired_7";
	sound[]={"\sar_krik\res\fired\RES_fired_7.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_8 {
	name="RES_fired_8";
	sound[]={"\sar_krik\res\fired\RES_fired_8.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_9 {
	name="RES_fired_9";
	sound[]={"\sar_krik\res\fired\RES_fired_9.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_10 {
	name="RES_fired_10";
	sound[]={"\sar_krik\res\fired\RES_fired_10.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_11 {
	name="RES_fired_11";
	sound[]={"\sar_krik\res\fired\RES_fired_11.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_12 {
	name="RES_fired_12";
	sound[]={"\sar_krik\res\fired\RES_fired_12.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_13 {
	name="RES_fired_13";
	sound[]={"\sar_krik\res\fired\RES_fired_13.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_14 {
	name="RES_fired_14";
	sound[]={"\sar_krik\res\fired\RES_fired_14.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_15 {
	name="RES_fired_15";
	sound[]={"\sar_krik\res\fired\RES_fired_15.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_16 {
	name="RES_fired_16";
	sound[]={"\sar_krik\res\fired\RES_fired_16.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_fired_17 {
	name="RES_fired_17";
	sound[]={"\sar_krik\res\fired\RES_fired_17.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_1 {
	name="RES_hit_1";
	sound[]={"\sar_krik\res\hit\RES_hit_1.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_2 {
	name="RES_hit_2";
	sound[]={"\sar_krik\res\hit\RES_hit_2.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_3 {
	name="RES_hit_3";
	sound[]={"\sar_krik\res\hit\RES_hit_3.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_4 {
	name="RES_hit_4";
	sound[]={"\sar_krik\res\hit\RES_hit_4.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_5 {
	name="RES_hit_5";
	sound[]={"\sar_krik\res\hit\RES_hit_5.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_6 {
	name="RES_hit_6";
	sound[]={"\sar_krik\res\hit\RES_hit_6.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_7 {
	name="RES_hit_7";
	sound[]={"\sar_krik\res\hit\RES_hit_7.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_8 {
	name="RES_hit_8";
	sound[]={"\sar_krik\res\hit\RES_hit_8.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_9 {
	name="RES_hit_9";
	sound[]={"\sar_krik\res\hit\RES_hit_9.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_10 {
	name="RES_hit_10";
	sound[]={"\sar_krik\res\hit\RES_hit_10.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_11 {
	name="RES_hit_11";
	sound[]={"\sar_krik\res\hit\RES_hit_11.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_12 {
	name="RES_hit_12";
	sound[]={"\sar_krik\res\hit\RES_hit_12.ogg", db- 50, 1.0};
	titles[]={};
	};
class RES_hit_13 {
	name="RES_hit_13";
	sound[]={"\sar_krik\res\hit\RES_hit_13.ogg", db- 50, 1.0};
	titles[]={};
	};


class usa_Death_BRIAN_1 {
name="usa_Death_BRIAN_1";
sound[]={"\sar_krik\usa\Death\BRIAN\usa_Death_BRIAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_BRIAN_2 {
name="usa_Death_BRIAN_2";
sound[]={"\sar_krik\usa\Death\BRIAN\usa_Death_BRIAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_BRIAN_3 {
name="usa_Death_BRIAN_3";
sound[]={"\sar_krik\usa\Death\BRIAN\usa_Death_BRIAN_3.ogg", db- 50, 1.0};
titles[]={};
};

class usa_Death_DAN_1 {
name="usa_Death_DAN_1";
sound[]={"\sar_krik\usa\Death\DAN\usa_Death_DAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_DAN_2 {
name="usa_Death_DAN_2";
sound[]={"\sar_krik\usa\Death\DAN\usa_Death_DAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_DAN_3 {
name="usa_Death_DAN_3";
sound[]={"\sar_krik\usa\Death\DAN\usa_Death_DAN_3.ogg", db- 50, 1.0};
titles[]={};
};

class usa_Death_DUSAN_1 {
name="usa_Death_DUSAN_1";
sound[]={"\sar_krik\usa\Death\DUSAN\usa_Death_DUSAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_DUSAN_2 {
name="usa_Death_DUSAN_2";
sound[]={"\sar_krik\usa\Death\DUSAN\usa_Death_DUSAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_DUSAN_3 {
name="usa_Death_DUSAN_3";
sound[]={"\sar_krik\usa\Death\DUSAN\usa_Death_DUSAN_3.ogg", db- 50, 1.0};
titles[]={};
};

class usa_Death_HOWARD_1 {
name="usa_v_HOWARD_1";
sound[]={"\sar_krik\usa\Death\HOWARD\usa_Death_HOWARD_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_HOWARD_2 {
name="usa_Death_HOWARD_2";
sound[]={"\sar_krik\usa\Death\HOWARD\usa_Death_HOWARD_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_HOWARD_3 {
name="usa_Death_HOWARD_3";
sound[]={"\sar_krik\usa\Death\HOWARD\usa_Death_HOWARD_3.ogg", db- 50, 1.0};
titles[]={};
};

class usa_Death_JEFF_1 {
name="usa_Death_JEFF_1";
sound[]={"\sar_krik\usa\Death\JEFF\usa_Death_JEFF_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_JEFF_2 {
name="usa_Death_JEFF_2";
sound[]={"\sar_krik\usa\Death\JEFF\usa_Death_JEFF_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_JEFF_3 {
name="usa_Death_JEFF_3";
sound[]={"\sar_krik\usa\Death\JEFF\usa_Death_JEFF_3.ogg", db- 50, 1.0};
titles[]={};
};


class usa_Death_MATHEW_1 {
name="usa_Death_MATHEW_1";
sound[]={"\sar_krik\usa\Death\MATHEW\usa_Death_MATHEW_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_MATHEW_2 {
name="usa_Death_MATHEW_2";
sound[]={"\sar_krik\usa\Death\MATHEW\usa_Death_MATHEW_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_MATHEW_3 {
name="usa_Death_MATHEW_3";
sound[]={"\sar_krik\usa\Death\MATHEW\usa_Death_MATHEW_3.ogg", db- 50, 1.0};
titles[]={};
};

class usa_Death_ROBERTPOLO_1 {
name="usa_Death_ROBERTPOLO_1";
sound[]={"\sar_krik\usa\Death\ROBERTPOLO\usa_Death_ROBERTPOLO_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_ROBERTPOLO_2 {
name="usa_Death_ROBERTPOLO_2";
sound[]={"\sar_krik\usa\Death\ROBERTPOLO\usa_Death_ROBERTPOLO_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_ROBERTPOLO_3 {
name="usa_Death_ROBERTPOLO_3";
sound[]={"\sar_krik\usa\Death\ROBERTPOLO\usa_Death_ROBERTPOLO_3.ogg", db- 50, 1.0};
titles[]={};
};


class usa_Death_RUSSEL_1 {
name="usa_Death_RUSSEL_1";
sound[]={"\sar_krik\usa\Death\RUSSEL\usa_Death_RUSSEL_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_RUSSEL_2 {
name="usa_Death_RUSSEL_2";
sound[]={"\sar_krik\usa\Death\RUSSEL\usa_Death_RUSSEL_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_RUSSEL_3 {
name="usa_Death_RUSSEL_3";
sound[]={"\sar_krik\usa\Death\RUSSEL\usa_Death_RUSSEL_3.ogg", db- 50, 1.0};
titles[]={};
};


class usa_Death_RYAN_1 {
name="usa_Death_RYAN_1";
sound[]={"\sar_krik\usa\Death\RYAN\usa_Death_RYAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_RYAN_2 {
name="usa_Death_RYAN_2";
sound[]={"\sar_krik\usa\Death\RYAN\usa_Death_RYAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_Death_RYAN_3 {
name="usa_Death_RYAN_3";
sound[]={"\sar_krik\usa\Death\RYAN\usa_Death_RYAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_1 {
name="usa_fired_BRIAN_1";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_2 {
name="usa_fired_BRIAN_2";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_3 {
name="usa_fired_BRIAN_3";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_4 {
name="usa_fired_BRIAN_4";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_5 {
name="usa_fired_BRIAN_5";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_6 {
name="usa_fired_BRIAN_6";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_7 {
name="usa_fired_BRIAN_7";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_BRIAN_8 {
name="usa_fired_BRIAN_8";
sound[]={"\sar_krik\usa\fired\BRIAN\usa_fired_BRIAN_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_DAN_1 {
name="usa_fired_DAN_1";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_2 {
name="usa_fired_DAN_2";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_3 {
name="usa_fired_DAN_3";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_4 {
name="usa_fired_DAN_4";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_5 {
name="usa_fired_DAN_5";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_6 {
name="usa_fired_DAN_6";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_7 {
name="usa_fired_DAN_7";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_8 {
name="usa_fired_DAN_8";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DAN_9 {
name="usa_fired_DAN_9";
sound[]={"\sar_krik\usa\fired\DAN\usa_fired_DAN_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_DUSAN_1 {
name="usa_fired_DUSAN_1";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_2 {
name="usa_fired_DUSAN_2";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_3 {
name="usa_fired_DUSAN_3";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_4 {
name="usa_fired_DUSAN_4";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_5 {
name="usa_fired_DUSAN_5";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_6 {
name="usa_fired_DUSAN_6";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_7 {
name="usa_fired_DUSAN_7";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_8 {
name="usa_fired_DUSAN_8";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_DUSAN_9 {
name="usa_fired_DUSAN_9";
sound[]={"\sar_krik\usa\fired\DUSAN\usa_fired_DUSAN_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_HOWARD_1 {
name="usa_fired_HOWARD_1";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_2 {
name="usa_fired_HOWARD_2";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_3 {
name="usa_fired_HOWARD_3";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_4 {
name="usa_fired_HOWARD_4";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_5 {
name="usa_fired_HOWARD_5";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_6 {
name="usa_fired_HOWARD_6";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_7 {
name="usa_fired_HOWARD_7";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_HOWARD_8 {
name="usa_fired_HOWARD_8";
sound[]={"\sar_krik\usa\fired\HOWARD\usa_fired_HOWARD_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_JEFF_1 {
name="usa_fired_JEFF_1";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_2 {
name="usa_fired_JEFF_2";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_3 {
name="usa_fired_JEFF_3";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_4 {
name="usa_fired_JEFF_4";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_5 {
name="usa_fired_JEFF_5";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_6 {
name="usa_fired_JEFF_6";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_7 {
name="usa_fired_JEFF_7";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_JEFF_8 {
name="usa_fired_JEFF_8";
sound[]={"\sar_krik\usa\fired\JEFF\usa_fired_JEFF_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_MATHEW_1 {
name="usa_fired_MATHEW_1";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_2 {
name="usa_fired_MATHEW_2";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_3 {
name="usa_fired_MATHEW_3";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_4 {
name="usa_fired_MATHEW_4";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_5 {
name="usa_fired_MATHEW_5";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_6 {
name="usa_fired_MATHEW_6";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_7 {
name="usa_fired_MATHEW_7";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_MATHEW_8 {
name="usa_fired_MATHEW_8";
sound[]={"\sar_krik\usa\fired\MATHEW\usa_fired_MATHEW_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_ROBERTPOLO_1 {
name="usa_fired_ROBERTPOLO_1";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_2 {
name="usa_fired_ROBERTPOLO_2";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_3 {
name="usa_fired_ROBERTPOLO_3";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_4 {
name="usa_fired_ROBERTPOLO_4";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_5 {
name="usa_fired_ROBERTPOLO_5";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_6 {
name="usa_fired_ROBERTPOLO_6";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_7 {
name="usa_fired_ROBERTPOLO_7";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_8 {
name="usa_fired_ROBERTPOLO_8";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_ROBERTPOLO_9 {
name="usa_fired_ROBERTPOLO_9";
sound[]={"\sar_krik\usa\fired\ROBERTPOLO\usa_fired_ROBERTPOLO_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_RUSSEL_1 {
name="usa_fired_RUSSEL_1";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_2 {
name="usa_fired_RUSSEL_2";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_3 {
name="usa_fired_RUSSEL_3";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_4 {
name="usa_fired_RUSSEL_4";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_5 {
name="usa_fired_RUSSEL_5";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_6 {
name="usa_fired_RUSSEL_6";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_7 {
name="usa_fired_RUSSEL_7";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RUSSEL_8 {
name="usa_fired_RUSSEL_8";
sound[]={"\sar_krik\usa\fired\RUSSEL\usa_fired_RUSSEL_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_fired_RYAN_1 {
name="usa_fired_RYAN_1";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_2 {
name="usa_fired_RYAN_2";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_3 {
name="usa_fired_RYAN_3";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_4 {
name="usa_fired_RYAN_4";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_5 {
name="usa_fired_RYAN_5";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_6 {
name="usa_fired_RYAN_6";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_7 {
name="usa_fired_RYAN_7";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_fired_RYAN_8 {
name="usa_fired_RYAN_8";
sound[]={"\sar_krik\usa\fired\RYAN\usa_fired_RYAN_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_BRIAN_1 {
name="usa_hit_BRIAN_1";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_2 {
name="usa_hit_BRIAN_2";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_3 {
name="usa_hit_BRIAN_3";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_4 {
name="usa_hit_BRIAN_4";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_5 {
name="usa_hit_BRIAN_5";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_6 {
name="usa_hit_BRIAN_6";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_7 {
name="usa_hit_BRIAN_7";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_8 {
name="usa_hit_BRIAN_8";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_BRIAN_9 {
name="usa_hit_BRIAN_9";
sound[]={"\sar_krik\usa\hit\BRIAN\usa_hit_BRIAN_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_DAN_1 {
name="usa_hit_DAN_1";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_2 {
name="usa_hit_DAN_2";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_3 {
name="usa_hit_DAN_3";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_4 {
name="usa_hit_DAN_4";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_5 {
name="usa_hit_DAN_5";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_6 {
name="usa_hit_DAN_6";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_7 {
name="usa_hit_DAN_7";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_8 {
name="usa_hit_DAN_8";
sound[]={"\sar_krik\usa\hit\DAN\usa_hit_DAN_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DAN_9 {
name="usa_hit_DAN_9";
sound[]={"\sar_krik\usa\hit\DAN\usa_v_DAN_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_DUSAN_1 {
name="usa_hit_DUSAN_1";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_2 {
name="usa_hit_DUSAN_2";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_3 {
name="usa_hit_DUSAN_3";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_4 {
name="usa_hit_DUSAN_4";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_5 {
name="usa_hit_DUSAN_5";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_6 {
name="usa_hit_DUSAN_6";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_7 {
name="usa_hit_DUSAN_7";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_8 {
name="usa_hit_DUSAN_8";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_DUSAN_9 {
name="usa_hit_DUSAN_9";
sound[]={"\sar_krik\usa\hit\DUSAN\usa_hit_DUSAN_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_HOWARD_1 {
name="usa_hit_HOWARD_1";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_2 {
name="usa_hit_HOWARD_2";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_3 {
name="usa_hit_HOWARD_3";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_4 {
name="usa_hit_HOWARD_4";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_5 {
name="usa_hit_HOWARD_5";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_6 {
name="usa_hit_HOWARD_6";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_7 {
name="usa_hit_HOWARD_7";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_8 {
name="usa_hit_HOWARD_8";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_HOWARD_9 {
name="usa_hit_HOWARD_9";
sound[]={"\sar_krik\usa\hit\HOWARD\usa_hit_HOWARD_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_JEFF_1 {
name="usa_hit_JEFF_1";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_2 {
name="usa_hit_JEFF_2";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_3 {
name="usa_hit_JEFF_3";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_4 {
name="usa_hit_JEFF_4";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_5 {
name="usa_hit_JEFF_5";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_6 {
name="usa_hit_JEFF_6";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_7 {
name="usa_hit_JEFF_7";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_JEFF_8 {
name="usa_hit_JEFF_8";
sound[]={"\sar_krik\usa\hit\JEFF\usa_hit_JEFF_8.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_MATHEW_1 {
name="usa_hit_MATHEW_1";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_2 {
name="usa_hit_MATHEW_2";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_3 {
name="usa_hit_MATHEW_3";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_4 {
name="usa_hit_MATHEW_4";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_5 {
name="usa_hit_MATHEW_5";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_6 {
name="usa_hit_MATHEW_6";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_7 {
name="usa_hit_MATHEW_7";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_8 {
name="usa_hit_MATHEW_8";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_MATHEW_9 {
name="usa_hit_MATHEW_9";
sound[]={"\sar_krik\usa\hit\MATHEW\usa_hit_MATHEW_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_ROBERTPOLO_1 {
name="usa_hit_ROBERTPOLO_1";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_2 {
name="usa_hit_ROBERTPOLO_2";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_3 {
name="usa_hit_ROBERTPOLO_3";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_4 {
name="usa_hit_ROBERTPOLO_4";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_5 {
name="usa_hit_ROBERTPOLO_5";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_6 {
name="usa_hit_ROBERTPOLO_6";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_7 {
name="usa_hit_ROBERTPOLO_7";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_8 {
name="usa_hit_ROBERTPOLO_8";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_ROBERTPOLO_9 {
name="usa_hit_ROBERTPOLO_9";
sound[]={"\sar_krik\usa\hit\ROBERTPOLO\usa_hit_ROBERTPOLO_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_RUSSEL_1 {
name="usa_hit_RUSSEL_1";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_2 {
name="usa_hit_RUSSEL_2";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_3 {
name="usa_hit_RUSSEL_3";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_4 {
name="usa_hit_RUSSEL_4";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_5 {
name="usa_hit_RUSSEL_5";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_6 {
name="usa_hit_RUSSEL_6";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_7 {
name="usa_hit_RUSSEL_7";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_8 {
name="usa_hit_RUSSEL_8";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RUSSEL_9 {
name="usa_hit_RUSSEL_9";
sound[]={"\sar_krik\usa\hit\RUSSEL\usa_hit_RUSSEL_9.ogg", db- 50, 1.0};
titles[]={};
};

class usa_hit_RYAN_1 {
name="usa_hit_RYAN_1";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_1.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_2 {
name="usa_hit_RYAN_2";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_2.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_3 {
name="usa_hit_RYAN_3";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_3.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_4 {
name="usa_hit_RYAN_4";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_4.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_5 {
name="usa_hit_RYAN_5";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_5.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_6 {
name="usa_hit_RYAN_6";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_6.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_7 {
name="usa_hit_RYAN_7";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_7.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_8 {
name="usa_hit_RYAN_8";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_8.ogg", db- 50, 1.0};
titles[]={};
};
class usa_hit_RYAN_9 {
name="usa_hit_RYAN_9";
sound[]={"\sar_krik\usa\hit\RYAN\usa_hit_RYAN_9.ogg", db- 50, 1.0};
titles[]={};
};

};

