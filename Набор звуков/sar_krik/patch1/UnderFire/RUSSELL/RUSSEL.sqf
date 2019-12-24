_obj = _this select 0;

if ( _obj distance player < 250) then {Switch (floor (random 4)) do {
case 0: {_obj say "USA_UnderFire_RUSSEL_1"};
case 1: {_obj say "USA_UnderFire_RUSSEL_2"};
case 2: {_obj say "USA_UnderFire_RUSSEL_3"};
case 3: {_obj say "USA_UnderFire_RUSSEL_4"};
}
};