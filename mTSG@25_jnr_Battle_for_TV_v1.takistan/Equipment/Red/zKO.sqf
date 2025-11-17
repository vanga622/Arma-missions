


comment "Add weapons";
this addWeapon "hlc_rifle_ak12GL";
this addPrimaryWeaponItem "rhs_acc_1p87";
this addPrimaryWeaponItem "rhs_30Rnd_545x39_7N22_plum_AK";
this addPrimaryWeaponItem "rhs_VOG25";

comment "Add containers";
this forceAddUniform "CUP_U_O_RUS_BeigeDigital_MSV";
this addVest "CUP_Vest_RUS_6B45_Sh117_BeigeDigital";
this addBackpack "CUP_O_RUS_Patrol_bag_BeigeDigital";

comment "Add binoculars";
this addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 3 do {this addItemToUniform "rhs_VOG25";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_545x39_7N22_AK";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_30Rnd_545x39_AK_plum_green";};
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_VOG25P";};
for "_i" from 1 to 5 do {this addItemToBackpack "rhs_GRD40_White";};
this addHeadgear "CUP_H_RUS_6B47_v2_BeigeDigital";
this addGoggles "PBW_Balaclava_schwarz";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

