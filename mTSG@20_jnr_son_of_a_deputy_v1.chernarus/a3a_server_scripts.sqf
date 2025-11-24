// Серверные скрипты
// Выполняются после инициализации платформы
// Отличное место чтобы разместить какие-нибудь условия победы/поражения в миссии
// Например: waitUntil { sleep 1; a3a_var_started }; ["60 minutes have passed, NATO wins", 3600] spawn a3a_fnc_endMissionTimer;
// Или: waitUntil { sleep 1; a3a_var_started }; [[["marker1", "ZONE 1 NAME", 1, 1], ["marker2", "ZONE 2 NAME", 1, 1]], 0, true, "UNKNOWN"] spawn a3a_fnc_endMissionZonesCapture;


waitUntil { sleep 3; a3a_var_started };

[] spawn {
    te_west_penalty = 0;
    te_green_penalty = 0;
	
    waitUntil {
        sleep 1;

        // Завершение игры, если время прошло
        if (tu_platform_missiontime > 600) exitWith {
            ["Победа обороны! Время вышло, оперативники не выполнили задачу", independent] call a3a_fnc_endMission;
			true
        };

        sleep 1;

        // Проверка победы обороны (по потерям атаки)
        if ((west countSide playableUnits) < (2 + te_west_penalty)) exitWith {
            ["Победа террористов! Оперативники понесли потери и отступили", independent] call a3a_fnc_endMission;
			true
        };

        // Проверка победы атаки (по потерям обороны)
        if ((independent countSide playableUnits) < (0 + te_green_penalty)) exitWith {
            ["Победа атаки! Террористы понесли потери и отступили!", west] call a3a_fnc_endMission;
			true
        };

        sleep 1;

		false
    };
};

