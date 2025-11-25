comment "Add weapons";
this addWeapon "rhs_weap_akm";
this addPrimaryWeaponItem "rhs_acc_dtkakm";

comment "Add containers";
this forceAddUniform "LOP_U_AFR_Fatigue_03";
this addVest "V_BandollierB_oli";
this addBackpack "B_AssaultPack_mcamo";

comment "Add items to containers";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm_bakelite";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_30Rnd_762x39mm_bakelite_tracer";};
for "_i" from 1 to 5 do {this addItemToBackpack "Chemlight_blue";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addHeadgear "H_ShemagOpen_khk";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";