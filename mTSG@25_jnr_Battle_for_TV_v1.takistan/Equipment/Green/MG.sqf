
comment "Add weapons";
this addWeapon "hlc_m249_pip3";
this addPrimaryWeaponItem "rhsusf_200Rnd_556x45_box";

comment "Add containers";
this forceAddUniform "LOP_U_AM_Fatigue_01";
this addHeadgear "H_ShemagOpen_khk";
this addGoggles "BWA3_G_Combat_black";


comment "Add items to containers";
this addItemToUniform "rhsusf_200Rnd_556x45_box";
for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_200Rnd_556x45_box";};
this addItemToBackpack "rhsusf_200rnd_556x45_mixed_box";
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
