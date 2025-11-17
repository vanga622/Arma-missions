[TV, "TV", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",
"((_this distance _target) < 2)",
"(_this distance _target) < 2",  
{},                              
{hint "Идет опознание объекта...";}, 
{["Телевизор найден. Победа атаки.", east] call a3a_fnc_endMission;},
{hint "Опознание прервано."},   
[], 20, 0, true, false
] call BIS_fnc_holdActionAdd;