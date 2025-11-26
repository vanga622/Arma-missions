waitUntil {sleep 4; a3a_var_started};
[] spawn {
[parsetext "<t font='PuristaBold' size='3'>Двадцать шесть</t><br />by [LS]Kali", true, nil, 7, 1.7, 0] spawn BIS_fnc_textTiles;
sleep 3;
0=[[["Черноруссия","align = 'center' size = '1.0' font='PuristaBold'","#d4c608"],["26 июня 2020","align = 'center' size = '0.8' font='PuristaBold'","#d4c608"]]] spawn BIS_fnc_typeText2;
};




