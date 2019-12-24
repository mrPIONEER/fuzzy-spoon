/*
	Автор: ArtyomAbramov
	Мод: Realistic Units Ragdoll
	https://steamcommunity.com/sharedfiles/filedetails/?id=673827546
*/

waitUntil {!(isNull (findDisplay 46))};
(findDisplay 46) displayAddEventHandler ["KeyDown", {
	if ((animationState player == "unconscious") && !((_this select 1) in ((actionKeys "ingamePause")+(actionKeys "chat")+(actionKeys "pushToTalk")+(actionKeys "nextChannel")+(actionKeys "prevChannel")+(actionKeys "personView")+(actionKeys "showMap")+(actionKeys "networkStats")))) then {true} else {false}
	}];
(findDisplay 46) displayAddEventHandler ["MouseZChanged", {if (animationState player == "unconscious") then {if (commandingMenu == "") then {showCommandingMenu "RscMainMenu"}}}];
//(findDisplay 46) displayAddEventHandler ["MouseButtonDown", {if (animationState player == "unconscious") then {true} else {false}}];