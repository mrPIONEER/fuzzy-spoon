/*
	�����: PIONEER
	���������� ��������� �������
	
	[] spawn PL_fnc_NoSpeed
*/

if (isMultiplayer) exitWith {};

// ���������� ��� ���������� �������
pl_acctime_on = true;

while {pl_acctime_on} do {
waitUntil {accTime > 1};
setAccTime 1;
uisleep 0.1;
};