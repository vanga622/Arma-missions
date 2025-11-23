_botList = [bot1, bot2, bot3, bot4, bot5, bot6, bot7, bot8];

{
    [_x, "Опознать бойца", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
    "((_this distance _target) < 3) && (alive _target) && (side _this == west)", 
    "((_this distance _target) < 3) && (alive _target)",
    {}, 
    {hint "Ты сын депутата???"}, 
    {
        params ["_target", "_caller"];
        
        if (_target getVariable ["isVIP", false]) then {
            hint "Это VIP!";
        } else {
            hint "Это не VIP.";
        };
    }, 
    {hint "Вопрос прерван."},
    [], 1, 0, false, false] call BIS_fnc_holdActionAdd;
} forEach _botList;
