/*
	A����: PIONEER
	��� �� �������� ���� ��� � ��� �� ����������� ������ ������
	��� ������������� ������ �������� �������� ��� ������ �������
	
	[] spawn PL_fnc_Skill
*/

// �����, ����� ������������ ��������� ���� � ������ ��������
sleep 10;

{
if (side _x == East) then {
_x setSkill 0;
_x allowFleeing 0;
}; 

if (side _x == West) then {
_x setSkill 0;
_x allowFleeing 0;
}; 

if (side _x == resistance) then {
_x setSkill 0;
_x allowFleeing 0;
}; 

if (side _x == Civilian) then {
_x setSkill 0;
_x allowFleeing 0;
}; 
} forEach allUnits;