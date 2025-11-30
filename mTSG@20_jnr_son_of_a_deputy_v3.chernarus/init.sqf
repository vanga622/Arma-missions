// ARMA3.RU Mission Template
// ARMA3.RU Mission Template
enableSaving [false, false]; // отключаем сохранения
0 = execVM "add_med.sqf"; // скрипт универсального добавления медицины от [ODK]Bn_, прописывает медикаменты каждому, и дополнительные медикам, у которых указан соответствующий ACE параметр в редакторе 
setTerrainGrid 2; // максимальная детализация рельефа на дистанции, убирает "просвечивающие" сквозь вершины холмов модели.
[] execVM "scripts\localobjects.sqf"; //подключение скрипта локальных объектов (как правило, укреплений), для снижения нагрузки на сервер. Сейчас включено, символом "//" в начале строки можно отключить
//[] execVM "scripts\flag_texture.sqf"; //подключение скрипта назначения текстуры флага


if (isServer) then {
	_botList = [bot1, bot2, bot3, bot4, bot5, bot6, bot7, bot8];
	_vipUnit = selectRandom _botList;
	_vipUnit setVariable ["isVIP", true, true];
};


if (isServer) then {
    _vipUnit = allUnits select {_x getVariable ["isVIP", false]} select 0;
    
    [_vipUnit] spawn {
        params ["_vipUnit"];
        
        while {alive _vipUnit} do {
            sleep 2;
            
            if (!(_vipUnit inArea trig)) then {       
                ["Сын депутата спасён. Победа синих!", west] call a3a_fnc_endMission;
            };
        };
    };
};



// Найти VIP (если он есть)
if (isServer) then {
    _vipUnit = allUnits select { _x getVariable ["isVIP", false] } select 0;

    if (!isNil "_vipUnit") then {
        _vipUnit addEventHandler ["Killed", {
            params ["_unit", "_killer"];
            // Победа обороны при убийстве VIP
            ["Сын депутата ликвидирован! Победа обороны!", independent] call a3a_fnc_endMission;
        }];
    };
};
	
if (isServer) then {
	[] execVM "scripts\civ_rules.sqf";//скрипт штрафов за убийства гражданских
};
