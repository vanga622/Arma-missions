
comment "Add weapons";
this addWeapon "RH_m110";
this addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2_d";
this addPrimaryWeaponItem "rhsusf_20Rnd_762x51_m118_special_Mag";

comment "Add containers";
this forceAddUniform "LOP_U_AM_Fatigue_01";
this addBackpack "B_AssaultPack_sgg";

comment "Add items to containers";
this addItemToUniform "ACE_RangeCard";
for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_20Rnd_762x51_m118_special_Mag";};
for "_i" from 1 to 6 do {this addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
this addItemToBackpack "rhsusf_20Rnd_762x51_m62_Mag";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_m67";};
this addHeadgear "H_ShemagOpen_khk";
this addGoggles "BWA3_G_Combat_black";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

