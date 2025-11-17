_buildings = [house1];

{
    private _building = _x;
    _building allowDamage true;
    {
        if (_x find "glass" != -1) then {
            _building setHitIndex [_forEachIndex, 1, false];
        };
    } forEach ((getAllHitpointsDamage _building) select 0);
    _building allowDamage false;
} forEach _buildings;