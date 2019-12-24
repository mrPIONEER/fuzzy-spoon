/*
	IFA3 Liberation
	Крики от ранения

	Код: PIONEER
*/

// Проверка настроек CBA
if (!ifa3_screams_cba_hit_red) exitwith {};

// на сервере только запускается
if (!isServer) exitwith {};

_obj = _this select 0;
_shooter = _this select 1;

// Проверка на стреляющего
if !(_shooter isKindOf "MAN" or _shooter isKindOf "car" or _shooter isKindOf "tank") exitWith {};

// Проверка на технику
if (vehicle _obj!= _obj) exitWith {};

_randomkrik = [

"RUS_alf9_hit_209","RUS_alf9_hit_210","RUS_alf9_hit_211","RUS_alf9_hit_212","RUS_alf9_hit_213","RUS_alf9_hit_214","RUS_alf9_hit_215","RUS_alf9_hit_225","RUS_alf9_hit_226","RUS_alf9_hit_227","RUS_alf9_hit_228","RUS_alf9_hit_229","RUS_alf9_hit_231","RUS_alf9_hit_231","RUS_alf9_hit_232","RUS_alf9_hit_233","RUS_alf9_hit_236","RUS_alf9_hit_275","RUS_alf9_hit_276","RUS_alf9_hit_277","RUS_alf9_hit_280","RUS_alf9_hit_281","RUS_alf9_hit_282","RUS_alf9_hit_283","RUS_alf9_hit_284","RUS_alf9_hit_285","RUS_alf9_hit_286","RUS_alf9_hit_288","RUS_alf9_hit_289","RUS_alf9_hit_290","RUS_alf9_hit_291","RUS_alf8_hit_209","RUS_alf8_hit_210","RUS_alf8_hit_211","RUS_alf8_hit_212","RUS_alf8_hit_213","RUS_alf8_hit_214","RUS_alf8_hit_215","RUS_alf8_hit_225","RUS_alf8_hit_226","RUS_alf8_hit_227","RUS_alf8_hit_228","RUS_alf8_hit_229","RUS_alf8_hit_231","RUS_alf8_hit_232","RUS_alf8_hit_233","RUS_alf8_hit_236","RUS_alf8_hit_275","RUS_alf8_hit_276","RUS_alf8_hit_277","RUS_alf8_hit_280","RUS_alf8_hit_281","RUS_alf8_hit_282","RUS_alf8_hit_283","RUS_alf8_hit_284","RUS_alf8_hit_285","RUS_alf8_hit_286","RUS_alf8_hit_288","RUS_alf8_hit_289","RUS_alf8_hit_290","RUS_alf8_hit_291","RUS_alf7_hit_209","RUS_alf7_hit_210","RUS_alf7_hit_211","RUS_alf7_hit_212","RUS_alf7_hit_213","RUS_alf7_hit_214","RUS_alf7_hit_215","RUS_alf7_hit_225","RUS_alf7_hit_226","RUS_alf7_hit_227","RUS_alf7_hit_228","RUS_alf7_hit_229","RUS_alf7_hit_231","RUS_alf7_hit_231","RUS_alf7_hit_232","RUS_alf7_hit_233","RUS_alf7_hit_236","RUS_alf7_hit_275","RUS_alf7_hit_276","RUS_alf7_hit_277","RUS_alf7_hit_280","RUS_alf7_hit_281","RUS_alf7_hit_282","RUS_alf7_hit_283","RUS_alf7_hit_284","RUS_alf7_hit_285","RUS_alf7_hit_286","RUS_alf7_hit_288","RUS_alf7_hit_289","RUS_alf7_hit_290","RUS_alf7_hit_291","RUS_alf6_hit_209","RUS_alf6_hit_210","RUS_alf6_hit_211","RUS_alf6_hit_212","RUS_alf6_hit_213","RUS_alf6_hit_214","RUS_alf6_hit_215","RUS_alf6_hit_225","RUS_alf6_hit_226","RUS_alf6_hit_227","RUS_alf6_hit_228","RUS_alf6_hit_229","RUS_alf6_hit_231","RUS_alf6_hit_231","RUS_alf6_hit_232","RUS_alf6_hit_233","RUS_alf6_hit_236","RUS_alf6_hit_275","RUS_alf6_hit_276","RUS_alf6_hit_277","RUS_alf6_hit_280","RUS_alf6_hit_281","RUS_alf6_hit_282","RUS_alf6_hit_283","RUS_alf6_hit_284","RUS_alf6_hit_285","RUS_alf6_hit_286","RUS_alf6_hit_288","RUS_alf6_hit_289","RUS_alf6_hit_290","RUS_alf6_hit_291","RUS_alf5_hit_209","RUS_alf5_hit_210","RUS_alf5_hit_211","RUS_alf5_hit_212","RUS_alf5_hit_213","RUS_alf5_hit_214","RUS_alf5_hit_215","RUS_alf5_hit_225","RUS_alf5_hit_226","RUS_alf5_hit_227","RUS_alf5_hit_228","RUS_alf5_hit_229","RUS_alf5_hit_231","RUS_alf5_hit_232","RUS_alf5_hit_233","RUS_alf5_hit_236","RUS_alf5_hit_275","RUS_alf5_hit_276","RUS_alf5_hit_277","RUS_alf5_hit_280","RUS_alf5_hit_281","RUS_alf5_hit_282","RUS_alf5_hit_283","RUS_alf5_hit_284","RUS_alf5_hit_285","RUS_alf5_hit_286","RUS_alf5_hit_288","RUS_alf5_hit_289","RUS_alf5_hit_290","RUS_alf5_hit_291","RUS_alf4_hit_209","RUS_alf4_hit_210","RUS_alf4_hit_211","RUS_alf4_hit_212","RUS_alf4_hit_213","RUS_alf4_hit_214","RUS_alf4_hit_215","RUS_alf4_hit_225","RUS_alf4_hit_226","RUS_alf4_hit_227","RUS_alf4_hit_228","RUS_alf4_hit_229","RUS_alf4_hit_231","RUS_alf4_hit_231","RUS_alf4_hit_232","RUS_alf4_hit_233","RUS_alf4_hit_236","RUS_alf4_hit_275","RUS_alf4_hit_276","RUS_alf4_hit_277","RUS_alf4_hit_280","RUS_alf4_hit_281","RUS_alf4_hit_282","RUS_alf4_hit_283","RUS_alf4_hit_284","RUS_alf4_hit_285","RUS_alf4_hit_286","RUS_alf4_hit_288","RUS_alf4_hit_289","RUS_alf4_hit_290","RUS_alf4_hit_291","RUS_alf3_hit_209","RUS_alf3_hit_210","RUS_alf3_hit_211","RUS_alf3_hit_212","RUS_alf3_hit_213","RUS_alf3_hit_214","RUS_alf3_hit_215","RUS_alf3_hit_225","RUS_alf3_hit_226","RUS_alf3_hit_227","RUS_alf3_hit_228","RUS_alf3_hit_229","RUS_alf3_hit_231","RUS_alf3_hit_231","RUS_alf3_hit_232","RUS_alf3_hit_233","RUS_alf3_hit_236","RUS_alf3_hit_275","RUS_alf3_hit_276","RUS_alf3_hit_277","RUS_alf3_hit_280","RUS_alf3_hit_281","RUS_alf3_hit_282","RUS_alf3_hit_283","RUS_alf3_hit_284","RUS_alf3_hit_285","RUS_alf3_hit_286","RUS_alf3_hit_288","RUS_alf3_hit_289","RUS_alf3_hit_290","RUS_alf3_hit_291","RUS_alf2_hit_209","RUS_alf2_hit_210","RUS_alf2_hit_211","RUS_alf2_hit_212","RUS_alf2_hit_213","RUS_alf2_hit_214","RUS_alf2_hit_215","RUS_alf2_hit_225","RUS_alf2_hit_226","RUS_alf2_hit_227","RUS_alf2_hit_228","RUS_alf2_hit_229","RUS_alf2_hit_231","RUS_alf2_hit_231","RUS_alf2_hit_232","RUS_alf2_hit_233","RUS_alf2_hit_236","RUS_alf2_hit_275","RUS_alf2_hit_276","RUS_alf2_hit_277","RUS_alf2_hit_280","RUS_alf2_hit_281","RUS_alf2_hit_282","RUS_alf2_hit_283","RUS_alf2_hit_284","RUS_alf2_hit_285","RUS_alf2_hit_286","RUS_alf2_hit_288","RUS_alf2_hit_289","RUS_alf2_hit_290","RUS_alf2_hit_291","RUS_alf1_hit_209","RUS_alf1_hit_210","RUS_alf1_hit_211","RUS_alf1_hit_212","RUS_alf1_hit_213","RUS_alf1_hit_214","RUS_alf1_hit_215","RUS_alf1_hit_225","RUS_alf1_hit_226","RUS_alf1_hit_227","RUS_alf1_hit_228","RUS_alf1_hit_229","RUS_alf1_hit_231","RUS_alf1_hit_231","RUS_alf1_hit_232","RUS_alf1_hit_233","RUS_alf1_hit_236","RUS_alf1_hit_275","RUS_alf1_hit_276","RUS_alf1_hit_277","RUS_alf1_hit_280","RUS_alf1_hit_281","RUS_alf1_hit_282","RUS_alf1_hit_283","RUS_alf1_hit_284","RUS_alf1_hit_285","RUS_alf1_hit_286","RUS_alf1_hit_288","RUS_alf1_hit_289","RUS_alf1_hit_290","RUS_alf1_hit_291"

] call BIS_fnc_selectRandom;

[_obj, _randomkrik, 100] call CBA_fnc_globalSay3d;

if (true) exitWith {};