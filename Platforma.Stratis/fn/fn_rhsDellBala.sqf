/*
	Автор: PIONEER
	Удаляет балаклавы у РФ или заменяет шлема 
	
	Активация:
	[] spawn PL_fnc_rhsDellBala
*/

sleep 0.1;

{
    // Удаляем если в классе очков
    if (goggles _x == "rhs_balaclava1_olive") then {removeGoggles _x};
    if (goggles _x == "rhs_balaclava") then {removeGoggles _x};
    if (goggles _x == "rhs_scarf") then {removeGoggles _x};

    // замена шлема
    if (headgear _x == "rhs_6b27m_bala") then {removeHeadgear _x;_x addHeadgear "rhs_6b27m";};
    if (headgear _x == "rhs_6b27m_ess_bala") then {removeHeadgear _x;_x addHeadgear "rhs_6b27m_ess";};
    if (headgear _x == "rhs_6b27m_green_bala") then {removeHeadgear _x;_x addHeadgear "rhs_6b27m_green";};
    if (headgear _x == "rhs_6b27m_green_ess_bala") then {removeHeadgear _x;_x addHeadgear "rhs_6b27m_green_ess";};

} foreach allunits;