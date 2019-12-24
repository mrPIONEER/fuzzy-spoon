/*
	Большие залежи скриптов - http://www.armaholic.com/list.php?c=arma3_files_editing_scripts
	Сообщество АрмаСуппорт в дискорде - https://discord.gg/eFwjAm
	Скрипты от ALIA - https://steamcommunity.com/workshop/filedetails/?id=1123074587
	Шаблон от Zloi - https://cloud.mail.ru/public/GnRK%2FDMDj3Bi5m \ https://drive.google.com/drive/folders/1YtWlNySZU52i3_jfzu-Ipzs2m-bHjTUa
	
	Более подробную информацию можно прочитать в каждом из скриптов, какие параметры можно указывать!
*/

class Platforma {
	tag = "PL";
	
	class Functions 
	{
		file = "fn";
		
		// [player,"STR_pl3","STR_pl3",false,true] spawn PL_fnc_Say
		class Say {}; // вывод диалогов персонажей
		
		// [player,"STR_pl3","STR_pl3"] call PL_fnc_SayRadio
		class SayRadio {}; // вывод диалогов в канал рации
		
		// [player,"TALKING",false,"ASIS"] spawn PL_fnc_Anim;
		class Anim {};	// анимации
		
		// ["end1",true] call PL_fnc_EndMis;		
		class EndMis {}; // конец миссии
		
		// [] spawn PL_fnc_fnDebug;	
		class Debug {}; // Дебаг скрипт для быстрой проверки миссии.
				
		// [] call PL_fnc_FireOf;		
		class FireOf {}; // провал если игрок выстрелит
		
		// [] call PL_fnc_FrendlyFire;		
		class FrendlyFire {}; // провал если игрок убьет своего или гражданского
						
		// [w1,"ups_sol"] spawn PL_fnc_UPS;
		class UPS {}; // продвинутый скрипт патруля
		
		// ["ups_sol",position player,50] call PL_fnc_UPSmarker
		class UPSmarker {}; // создание маркера-зоны патруля UPS
		
		// [] call PL_fnc_vcom;
		class Vcom {}; // Поддержка Vcom
		
		// [] spawn PL_fnc_skill;
		class Skill {}; // Скил в 0, отключение отступления ИИ
		
		// [this,"marker","MOVE","NORMAL","LINE"] call PL_fnc_Waypoint
		class Waypoint {};	// создание вейпоинта для юнитов
		
		// [] spawn PL_fnc_initMP;
		class initMP {}; // стартовые параметры для КООП миссий

		//  [] spawn PL_fnc_Nospeed;
		class Nospeed {}; // отключение ускорение времени 
		
		// [] spawn PL_fnc_No3D;
		class No3D {};	 // отключение 3Д вида
		
		// [] spawn PL_fnc_desertir;
		class deserter {};	 // провал миссии по дезертирству
		
		// [air,position,200,270,60] call PL_fnc_TeleportAir;
		class TeleportAir {}; // телепорт самолетов\вертолетов

		// [vert] spawn PL_fnc_infParadrop;
		class infParadrop {}; // десантирование всех из техники
		
		// [270,10] spawn PL_fnc_LaserTarget;
		class LaserTarget {}; // наведение ракеты по лазеру

		// [player,"player"] spawn PL_fnc_gomarker;
		class gomarker {}; // маркер следует за юнитом

		// [lampa] spawn PL_fnc_Lanterns;
		class Lanterns {}; // создание источника света (лампа)
				
		// [] spawn PL_fnc_NoSnake;
		class NoSnake {}; // удаление кроликов и змей
			
		// [] spawn PL_fnc_nouniform;
		class nouniform {}; // отключение смены униформы у игрока
		
		// [] spawn PL_fnc_RealisticUnitsRagdoll;
		class RealisticUnitsRagdoll {}; // реалистичный регдол для солдат (не подрыгивает при смерти)
						
		// [p1,p2] spawn PL_fnc_privet;
		class privet {}; // воинское приветствие 
		
		// [this,350] spawn PL_fnc_patrol;
		class patrol {}; // простой скрипт патруля
		
		// [t1,t2,3] spawn PL_fnc_tankfire;
		class tankfire {}; // стрельба танка по мишени

		// [10,"Bo_Mk82",bot_1,8,80] spawn PL_fnc_bomb;
		class bomb {}; // артобстрел
		
		// ["M_ed","M_st",100,300] spawn PL_fnc_Grad;
		class grad {}; // обстрел ракетами зону

		// [name,"marker",20] spawn PL_fnc_GradFire;
		class gradFire {}; // арта (град) эффектно стреляют вверх
		
		// [radio] spawn PL_fnc_radioru;
		class radioru {}; // динамические радиопереговоры
		
		// [radio] spawn PL_fnc_radioen;
		class radioen {}; // динамические радиопереговоры
		
		// ["ALPHA","STRD_Task1","hint 'работает!'"] call PL_fnc_TriggerRadio;
		class TriggerRadio {}; // Создание действия в стандартный канал радио 0-0-1

		// [this] spawn PL_fnc_HousePatrol;
		class HousePatrol {}; // Юнит патрулирует здание
		
		// [getPosATL player, units group player] spawn PL_fnc_OccupyHouse;
		class OccupyHouse {}; // Юниты занимают здание в окнах
		
		// [trig_final,east,300] call PL_fnc_KillAll;
		class KillAll {}; // Убийство всех солдат в радиусе
											
		// [true] call PL_fnc_Cam;
		class Cam {}; // создание камеры
				
		// [cam1,[11,-20,5],10] call PL_fnc_CamTarget;
		class CamTarget {}; // камера следит на целью
				
		// [2] spawn PL_fnc_CamPerehod;
		class CamPerehod {}; // плавный переход
		
		// [air,[-9,-20,2],80] call PL_fnc_CamAttach;
		class CamAttach {}; // камера прикреплена к объекту

		// [true] call PL_fnc_CamMap;
		class CamMap {}; // Открытие\закрытие карты

		// [2,0.1,"start"] call PL_fnc_CamMapTarget;
		class CamMapTarget {}; // Перемещение карты.
	};
};