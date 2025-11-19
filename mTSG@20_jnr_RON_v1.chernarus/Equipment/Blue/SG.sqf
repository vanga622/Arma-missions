comment "Add weapons";
this addWeapon "rhs_weap_M590_8RD";
this addWeapon "rhs_weap_M320";

comment "Add containers";
this forceAddUniform "TRYK_U_B_BLKBLK_CombatUniform";
this addVest "TRYK_V_Sheriff_BA_TB3";
this addBackpack "TRYK_B_Kitbag_blk";

comment "Add items to containers";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M585_white";};
for "_i" from 1 to 5 do {this addItemToVest "rhsusf_8Rnd_00Buck";};
for "_i" from 1 to 4 do {this addItemToVest "rhsusf_8Rnd_Slug";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m713_Red";};
for "_i" from 1 to 3 do {this addItemToVest "Chemlight_blue";};
this addItemToVest "rhs_mag_an_m8hc";
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_m4009";};
this addHeadgear "TRYK_H_PASGT_BLK";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";