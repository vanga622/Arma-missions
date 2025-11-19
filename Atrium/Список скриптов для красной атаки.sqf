//Используйте только один из скриптов на выбор.

//Скопировать и вставить в a3a_server_scripts. Скрипт на захват красными одной зоны с условием "если в триггере красных больше синих в три раза и синих меньше 2-х". 
if (isServer) then {
waitUntil { sleep 10; a3a_var_started };
_trg1 = 0;
while {isNil "srv_triggerFinished"} do { 
		sleep 3;
		if (_trg1 == 0) then {
			if (((east countSide list trg1) > (west countSide list trg1)*3) && ((west countSide list trg1) < 2)) then {
				_trg1 = 1; 
				flag1 forceFlagTexture "pics\atk.paa";
				tu_log_mission_message pushBack ("Триггер захвачен!");
			};
		};
		if (_trg1 == 1) then {	
		srv_triggerFinished = true;
		["Все задачи выполнены, победа атаки!", EAST] call a3a_fnc_endMission;
		};
	};
};

//Скопировать и вставить в a3a_server_scripts. Скрипт на захват красными двух зон с условиями первого триггера "если в триггере красных больше синих в три раза и синих меньше 2-х", а второго "красных больше 3-х, синих меньше 1-го (полное отсутствие).
if (isServer) then {
waitUntil { sleep 10; a3a_var_started };
_trg1 = 0;
_trg2 = 0;
while {isNil "srv_triggerFinished"} do { 
		sleep 3;
		if (_trg1 == 0) then {
			if (((east countSide list trg1) > (west countSide list trg1)*3) && ((west countSide list trg1) < 2)) then {
				_trg1 = 1; 
				flag1 forceFlagTexture "pics\atk.paa";
				tu_log_mission_message pushBack ("Триггер1 захвачен!");
			};
		};
		if (_trg2 == 0) then {
			if (((east countSide list trg2) > 3) && ((west countSide list trg2) < 1)) then {
				_trg2 = 1; 
				flag2 forceFlagTexture "pics\atk.paa";
				tu_log_mission_message pushBack ("Триггер2 захвачен!");
			};
		};
		if ((_trg1 == 1) && (_trg2 == 1)) then {	
		srv_triggerFinished = true;
		["Все задачи выполнены, победа атаки!", EAST] call a3a_fnc_endMission;
		};
	};
};

// Скопировать и вставить в initplayerlocal.sqf. Красным необходимо ликвидировать и опознать синего VIP. 
if (!isDedicated) then
{
	if (playerSide == east) then
	{
		[] execVM "scripts\vipactions.sqf";
	};
};

// Скрипт вставлять в init.sqf: красные в атаке, через 2 часа побеждает та сторона, чей флаг висит на флагштоке
 if (isServer) then {
	//присвоение флагу значения синие (оборона)
	belyi_flags = [flag1];
	{
		_x setVariable ["controledBy", west, true];
	} forEach belyi_flags;
	//проверка и завершение миссии через 120 минут
	[] spawn {
		waitUntil { sleep 3; a3a_var_started };
		// sleep 7200;
		// Время до конца = время + ВРЕМЯ НА МИССИЮ - время потраченное на паузы
		private _timeEnd = diag_tickTime + 7200 - (missionnamespace getVariable ["tu_platform_pauseMissionTime", 0]);
		waitUntil {
			sleep 5;
			// Стоит ли миссия на паузе
			!(missionnamespace getVariable ["tu_platform_pauseMission", false]) &&
			{
				// Время - время потраченное на паузы > время до конца
				(diag_tickTime - (missionnamespace getVariable ["tu_platform_pauseMissionTime", 0])) > _timeEnd
			}
		};
		private _countEast = {(_x getVariable 'controledBy' == east )} count belyi_flags;
		private _countWest = {(_x getVariable 'controledBy' == west )} count belyi_flags;
		if (_countEast > _countWest) then {
			["Победа атаки"] call a3a_fnc_endMission;
		} else {
			["Победа обороны"] call a3a_fnc_endMission;
		}
	};
};
// Теперь этот скрипт скопировать и вставить в initplayerlocal.sqf.
if (!isDedicated) then
{
	[] execVM "scripts\flagactions.sqf"; //флаги
};

// Скрипт вставлять в init.sqf. Красные для победы должны поднять и удерживать флаг в течении 15 минут, время на миссию 120 минут.
if (isServer) then {
    //присвоение флагу значения синие
    belyi_flags = [flag1];
    {
       _x setVariable ["controledBy", west, true];
    } forEach belyi_flags;
	
    0 spawn {
        waitUntil {
            uiSleep 5;
            a3a_var_started
        };

        private _missionTime = 120; comment "minute";
        private _captureTime = 15; comment "minute";

        private _missionStartTime = systemTime select [0,5];
        private ["_captureStartTime","_missionMiuteDiff","_flagMinuteDiff","_tu_platform_pauseMissionTimeMinute"];

        while {true} do {
            uiSleep 10;

            _tu_platform_pauseMissionTimeMinute = (missionnamespace getVariable["tu_platform_pauseMissionTime", 0]) / 60;
            if ((flag1 getVariable ["controledBy", west]) isEqualTo east) then {
                if(isNil "_captureStartTime") then {_captureStartTime = systemTime select [0,5]};
                _flagMinuteDiff = ([_captureStartTime,systemTime select [0,5],"m"] call BIS_fnc_calculateDateTime) + _tu_platform_pauseMissionTimeMinute;
                if(_flagMinuteDiff >= _captureTime) then {
                    ["Красные захватили и удержали штаб.", east] call a3a_fnc_endMission;
                };
            } else {
                _captureStartTime = nil;
            };

            _missionMiuteDiff = ([_missionStartTime,systemTime select [0,5],"m"] call BIS_fnc_calculateDateTime) + _tu_platform_pauseMissionTimeMinute;
            if(
                (_missionMiuteDiff >= (_missionTime + _tu_platform_pauseMissionTimeMinute)) && 
                {(flag1 getVariable ["controledBy", west]) isNotEqualTo east}
            ) exitWith {["Синие удержали штаб!.", west] call a3a_fnc_endMission};
        };
    };
};
// Теперь этот скрипт скопировать и вставить в initplayerlocal.sqf.
if (!isDedicated) then
{
	[] execVM "scripts\flagactions.sqf"; //флаги
};
