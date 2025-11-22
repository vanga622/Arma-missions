comment "Add weapons";
this addWeapon "rhs_weap_akms";
this addPrimaryWeaponItem "rhs_acc_dtkakm";

comment "Add containers";
this forceAddUniform "LOP_U_AFR_Fatigue_02";
this addVest "V_BandollierB_cbr";
this addBackpack "B_AssaultPack_khk";

comment "Add items to containers";
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm_bakelite";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_30Rnd_762x39mm_bakelite_tracer";};
for "_i" from 1 to 5 do {this addItemToBackpack "Chemlight_blue";};
for "_i" from 1 to 1 do {this addItemToBackpack "rhs_mag_f1";};
this addHeadgear "H_ShemagOpen_tan";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";