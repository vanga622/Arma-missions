
comment "Add weapons";
this addWeapon "RH_M4A1_ris";
this addPrimaryWeaponItem "rhsusf_acc_ACOG";
this addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";

comment "Add containers";
this forceAddUniform "LOP_U_AM_Fatigue_01";
this addBackpack "TFAR_anprc155_coyote";

comment "Add binoculars";
this addWeapon "TU_B8_Binocular";

comment "Add items to containers";
for "_i" from 1 to 6 do {this addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_an_m8hc";};
this addHeadgear "H_ShemagOpen_khk";
this addGoggles "BWA3_G_Combat_black";


comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

