
_obj = _this select 0;

if ((damage _obj)<0.5) exitWith {};

waitUntil {USA_9};


if (_obj distance player < 250 and (damage _obj)>0.2 and alive _obj) then {

_obj say "USA_hit_RYAN_3";
USA_9 = false;
[] Spawn {sleep 10; USA_9 = true};
};