comment "Add weapons";
this addWeapon "RH_M4_ris";
this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
this addPrimaryWeaponItem "rhsusf_acc_eotech_552";
this addWeapon "rhsusf_weap_glock17g4";

comment "Add containers";
this forceAddUniform "TRYK_U_B_BLKBLK_CombatUniform";
this addVest "TRYK_V_Sheriff_BA_TB3";
this addBackpack "TRYK_B_Kitbag_blk";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
for "_i" from 1 to 5 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_mk84";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToVest "rhs_mag_an_m8hc";
this addItemToVest "rhs_mag_m7a3_cs";
this addHeadgear "TRYK_H_PASGT_BLK";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
this linkItem "rhsusf_ANPVS_15";