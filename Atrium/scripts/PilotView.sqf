_insertChildren = {
    params ["_target", "_player", "_params"];
    // Дистанции для самолётов
    private _planeDistances = [3000,4000,4500, 10000];
    // Дистанции для вертолётов
    private _heliDistances = [5000, 8000, 10000];
    private _actions = [];
    {
        _action = [
            ["setViewDistancePlane", str _x] joinString "",
            str _x,
            "",
            {setViewDistance (_this # 2)},
            {vehicle _player isKindOf "plane"},
            {},
            _x
        ] call ace_interact_menu_fnc_createAction;
        _actions pushBack [_action, [], _target]; 
    } forEach _planeDistances;
        {
        _action = [
            ["setViewDistanceHeli", str _x] joinString "",
            str _x,
            "",
            {setViewDistance (_this # 2)},
            {vehicle _player isKindOf "helicopter"},
            {},
            _x
        ] call ace_interact_menu_fnc_createAction;
        _actions pushBack [_action, [], _target]; 
    } forEach _heliDistances;
    _actions;
};

_action = [
    "setViewDistance",
    "Видимость",
    "",
    {},
    {vehicle _player isKindOf "air"},
    _insertChildren
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;