/*
	�����: PIONEER. ������� �� ������: SIVAT
	C������� � ���� � ��������� �������. ����������� ��� ����������. 

	[grad,"mark",20] spawn PL_fnc_GradFire

	1 - ��� ����
	2 - ������, � ����� ������� ����� �������
	3 - ���-�� ���������
*/

if (!isServer) exitWith {} ;

params ["_strelok", "_marker", "_kolVo"];

private _pos = getMarkerPos _marker; 
_pos set [2,100];
private _gunner = gunner _strelok;
_gunner doWatch _pos; 
private _weapon = (weapons _strelok) select 0;
_vp = (weapons _strelok) select 0; 

_strelok addEventHandler ["Fired",{
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
     [_projectile, 5] spawn {
        params ["_obj", "_sleep"];
        sleep _sleep;
        deleteVehicle _obj;
    };
}];

sleep 2; 

for "_i" from 1 to _kolVo do {
    _strelok fire _vp;
    sleep 1;
};