if (!isDedicated) then
{
    if (playerSide == east) then
    {
        
        [] execVM "scripts\targetaction.sqf";
    };
};

bn_arb_faces = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"]; 
{_x setFace (selectRandom bn_arb_faces);} forEach units resistance;