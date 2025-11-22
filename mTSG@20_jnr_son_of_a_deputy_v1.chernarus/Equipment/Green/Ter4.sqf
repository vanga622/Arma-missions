comment "Add weapons";
this addWeapon "hlc_rifle_g3sg1";

comment "Add containers";
this forceAddUniform "LOP_U_AFR_Fatigue_04";
this addVest "V_BandollierB_khk";
this addBackpack "B_AssaultPack_rgr";

comment "Add items to containers";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_b_G3";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_20rnd_762x51_T_G3";};
for "_i" from 1 to 5 do {this addItemToBackpack "Chemlight_blue";};
for "_i" from 1 to 1 do {this addItemToBackpack "rhs_mag_f1";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addHeadgear "H_Watchcap_camo";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";