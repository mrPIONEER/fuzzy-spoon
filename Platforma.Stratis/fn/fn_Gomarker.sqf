/*
	�����: PIONEER
	������������ ������� � �����
	
	���������:
	[tank,"tank"] spawn PL_fnc_Gomarker
	
	1 - ��� �����
	2 - ��� �������
*/

if (!isServer) exitWith {};

params["_man", "_marker"];

while {true} do {
_marker setmarkerpos getpos _man;
sleep 1;
if (!alive _man) exitWith {deleteMarker _marker};
};