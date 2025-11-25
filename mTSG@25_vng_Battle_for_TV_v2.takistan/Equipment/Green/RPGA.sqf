comment "Add weapons";
this addWeapon "rhs_pzn_weap_akmn";
this addPrimaryWeaponItem "rhs_acc_dtkakm";
this addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";

comment "Add containers";
this forceAddUniform "LOP_U_AM_Fatigue_01";
this addBackpack "B_Kitbag_tan";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_rpg7_PG7VL_mag";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_rpg7_OG7V_mag";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_30Rnd_762x39mm_bakelite";};
this addItemToBackpack "rhs_30Rnd_762x39mm_bakelite_tracer";
this addItemToBackpack "rhs_mag_m67";
this addItemToBackpack "rhs_mag_an_m8hc";
this addHeadgear "H_ShemagOpen_khk";
this addGoggles "BWA3_G_Combat_black";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
