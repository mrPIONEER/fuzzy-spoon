/*
	Тестовая миссия.
*/

playmusic "baz";
[parseText localize "STRD_PL_start", true, nil, 7, 0.7, 0] spawn BIS_fnc_textTiles; // стартовый текст

// Ролик
_rolik = [] spawn {
[otr,"STRD_PL_SAY1","STRD_PL_SAY1",false,true] spawn PL_fnc_Say;
[true] call PL_fnc_Cam;
[otr,[1,2,1.7],0] call PL_fnc_CamTarget;
[otr,[1,20,6],10] call PL_fnc_CamTarget;
sleep 10;
[] spawn PL_fnc_CamPerehod;
sleep 2;
[baza,"STRD_PL_SAY2","STRD_PL_SAY2",false,false] spawn PL_fnc_Say;
[cam1,[1,-2,1.7],0] call PL_fnc_CamTarget;
[cam1,[11,-20,5],10] call PL_fnc_CamTarget;
sleep 5;
[] spawn PL_fnc_CamPerehod;
sleep 2;
[air,[-9,-20,2],80] call PL_fnc_CamAttach;
sleep 5;
[] spawn PL_fnc_CamPerehod;
sleep 2;
[otr,"STRD_PL_SAY3","STRD_PL_SAY3",false,true] spawn PL_fnc_Say;
[otr,[1,2,1.7],0] call PL_fnc_CamTarget;
sleep 2;
[false] call PL_fnc_Cam;
// Ролик
};

_p1 = [] spawn {
["ups_sol",[6060.27,5611.68,0],100] call PL_fnc_UPSmarker; // создание маркера для скрипта патруля

// задаем патрули
[w1,"ups_sol"] spawn PL_fnc_UPS;
[w2,"ups_sol"] spawn PL_fnc_UPS;
[w3,"ups_sol"] spawn PL_fnc_UPS;
};

// ждем окончания ролика 
waitUntil {scriptDone _rolik};

sleep 5;
[player,"STRD_PL_SAY4","STRD_PL_SAY4",false,true] spawn PL_fnc_Say;
sleep 5;
[leader otr,"STRD_PL_SAY5","STRD_PL_SAY5",false,true] spawn PL_fnc_Say;

// ждем зачистки и активации тригера
waitUntil {triggerActivated trig_final};
[trig_final,resistance,300] call PL_fnc_KillAll; // удаление недобитков
["task1","SUCCEEDED"] call BIS_fnc_taskSetState; // выполнение 1 задачи
sleep 2;
[leader otr,"STRD_PL_SAY6","STRD_PL_SAY6"] spawn PL_fnc_SayRadio;
sleep 5;
[baza,"STRD_PL_SAY7","STRD_PL_SAY7"] spawn PL_fnc_SayRadio;
["end1",true] call PL_fnc_EndMis;