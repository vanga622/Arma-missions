_botList = [bot1, bot2, bot3, bot4, bot5, bot6, bot7, bot8];

// Штрафы за убийства ботов (не VIP)
te_west_penalty = 0;
te_green_penalty = 0;

{
    _x addEventHandler ["GetOutMan", {
        params ["_unit", "_role", "_vehicle", "_turret", "_isEject"];
        _vehicle lock 0;
        _unit removeEventHandler ["GetOutMan", _thisEventHandler];
    }];
    
    _x addEventHandler ["Killed", {
        params ["_unit", "_killer", "_instigator", "_useEffects"];
        
        // Если убитый бот не ВИП, накладываем штрафы
        if !(_unit getVariable ["isVIP", false]) then {
            
            // Синяя сторона убила бота
            if (side _instigator == WEST || side _killer == WEST) then {
                te_west_penalty = te_west_penalty + 1;
                if !(isNil "tu_log_mission_message") then {
                    tu_log_mission_message pushBack "Синяя сторона убила невинного бойца";
                };
            };
            
            // Зелёная сторона убила бота
            if (side _instigator == INDEPENDENT || side _killer == INDEPENDENT) then {
                te_green_penalty = te_green_penalty + 2;
                if !(isNil "tu_log_mission_message") then {
                    tu_log_mission_message pushBack "Зеленая сторона убила невинного бойца";
                };
            };
        };
        
        if ((vehicle _unit) != _unit) then {
            vehicle _unit lock 0;
        };
        _unit removeEventHandler ["Killed", _thisEventHandler];
    }];
} forEach _botList;
		