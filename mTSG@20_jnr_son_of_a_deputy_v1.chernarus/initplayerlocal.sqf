_botList = [bot1, bot2, bot3, bot4, bot5, bot6, bot7, bot8];
// Випадково вибираємо одного
_vipUnit = selectRandom _botList;
// Призначаємо змінну VIP
_vipUnit setVariable ["isVIP", true, true];



if (!isDedicated) then
{
    if (playerSide == west) then
    {
        [] execVM "scripts\isSON.sqf";
    };
};

