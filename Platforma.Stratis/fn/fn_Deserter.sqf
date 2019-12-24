/*
	Автор: [SV] Simych, PIONEER
	Скрипт провала миссии

	Ставим ТРИГГЕР

	Тип: Нет
	Активация: Кто угодно - для всех, либо ставье фракцию для кого ограничить зону
	Тип активации: Присутствует
	Повторяемый: ДА
	Только сервер: НЕТ

	Пишем в

	Условие:
	player in thislist - только пехота.
	(player in thislist) or (vehicle player in thislist) - пехота+техника.

	При активации:
	stop1 = [] spawn PL_fnc_deserter;

	Вместо stop1 можно любое свое значение, но учтите каждый триггер должен иметь разное значение!
	т.е. например stop1  stop2  stop3 и т.д. чтоб скрипт случайно не сработал на всех триггерах сразу.

	При деактивации:
	terminate stop1;

	Это делается для того, чтоб скрипт выгружался когда человек выходил из триггера! ОБЯЗАТЕЛЬНО!
*/


private _pname = format ["%1",name player];
private _mess = "<t color='#ff0000'>STOP </t>" +_pname+ "<t color='#ff0000'><br /></t>";
[_mess,0,0.5,5,1] spawn BIS_fnc_dynamicText;
sleep 5;
["<t color='#ff0000'>5</t>",0,0.4,1,1] spawn BIS_fnc_dynamicText;
sleep 1;
["<t color='#ff0000'>4</t>",0,0.4,1,1] spawn BIS_fnc_dynamicText;
sleep 1;
["<t color='#ff0000'>3</t>",0,0.4,1,1] spawn BIS_fnc_dynamicText;
sleep 1;
["<t color='#ff0000'>2</t>",0,0.4,1,1] spawn BIS_fnc_dynamicText;
sleep 1;
["<t color='#ff0000'>1</t>",0,0.4,1,1] spawn BIS_fnc_dynamicText;
sleep 1;

{
	pl_proval = player createSimpleTask [localize "STRD_proval1"];
	pl_proval setSimpleTaskDescription[localize "STRD_proval1", localize "STRD_proval1", localize "STRD_proval1"];
	pl_proval setTaskState "FAILED";
	["TaskFAILED",["",localize "STRD_proval1"]] call BIS_fnc_showNotification;
	["pl_loser_desertir",false] call PL_fnc_EndMis;
} remoteExec ["bis_fnc_call", 0];

