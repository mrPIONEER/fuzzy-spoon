// ������ ������ �������, ���������
// ���_����� AddEventHandler ["hit",{_this execvm "\sar_krik\res\hit_ar.sqf"}]


_obj = _this select 0;
_n = random 80;
_ms = getPos _obj nearEntities [["Man"] , 250];
// �������� �� ���������� ����������
if (west countSide _ms == 0 and east countSide _ms == 0) exitWith {}; 
//if (Resistance countSide _ms == 0) exitWith {}; 

// �������� �� �������
if (vehicle _obj!= _obj) exitWith {};
if (vehicle player!= player) exitWith {};

if (_obj distance player < 100) then {Switch (floor (random 18)) do {
case 0: {_obj say "ar1"};
case 1: {_obj say "ar2"};
case 2: {_obj say "ar3"};
case 3: {_obj say "ar4"};
case 4: {_obj say "ar5"};
case 5: {_obj say "ar6"};
case 6: {_obj say "ar7"};
case 7: {_obj say "ar7"};
case 8: {_obj say "ar9"};
case 9: {_obj say "ar10"};
case 10: {_obj say "ar11"};
case 11: {_obj say "ar12"};
case 12: {_obj say "ar13"};
case 13: {_obj say "ar14"};
case 14: {_obj say "ar15"};
case 15: {_obj say "ar16"};
case 16: {_obj say "ar17"};
case 17: {_obj say "ar18"};
}
};
exit