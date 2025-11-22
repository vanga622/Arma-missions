flags = [flag1];

if (playerside == east) then
{
    {
        [_x,"Поднять флаг","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
        "(((_this distance _target) < 5) && ((_target getVariable 'controledBy') != east))","((_this distance _target) < 5)",
        {[_target, 0] call BIS_fnc_animateFlag},
        {},
        {_target setVariable ["controledBy", east, true]; [_target, "pics\atk.paa"] remoteExec ["forceFlagTexture", _target]; [_target, 1] call BIS_fnc_animateFlag; ["Игрок: %1 атаки поднял флаг!", name player] call delpan_fnc_messageReplay;},
        {[_target, 1] call BIS_fnc_animateFlag;},
        [],20,0,false,false] call BIS_fnc_holdActionAdd;
    } forEach flags;
}
else
{
    {
        [_x,"Поднять флаг","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa","\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
        "(((_this distance _target) < 5) && ((_target getVariable 'controledBy') != west))","((_this distance _target) < 5)",
        {[_target, 0] call BIS_fnc_animateFlag},
        {},
        {_target setVariable ["controledBy", west, true]; [_target, "pics\def.paa"] remoteExec ["forceFlagTexture", _target]; [_target, 1] call BIS_fnc_animateFlag; ["Игрок: %1 обороны поднял флаг!", name player] call delpan_fnc_messageReplay;},
        {[_target, 1] call BIS_fnc_animateFlag;},
        [],20,0,false,false] call BIS_fnc_holdActionAdd;
    } forEach flags;
};