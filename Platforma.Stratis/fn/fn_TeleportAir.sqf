/*
	�����: PIONEER 
	�������� ��������

	[vert,pos1,200,270,60] call PL_fnc_TeleportAir
	
	1 - ���
	2 - ������� ���������
	3 - ��������
	4 - ������
	5 - ������

	��������: �������� ����������� � ������� ��������. ���� ������� ��� �����, �������� 0 �������.
*/

if (!isServer) exitWith {} ;

params ["_plane","_mesto","_speed","_dir","_vis"];

_plane setPos [getPos _mesto select 0, getPos _mesto select 1, (getPos _mesto select 2) + _vis];

_plane setdir _dir;
_vel = velocity _plane;

_plane setVelocity [
	(_vel select 0) + (sin _dir * _speed), 
	(_vel select 1) + (cos _dir * _speed), 
	(_vel select 2)
];