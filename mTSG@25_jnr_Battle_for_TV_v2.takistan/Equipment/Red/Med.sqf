
comment "Add weapons";
this addWeapon "hlc_rifle_ak12";
this addPrimaryWeaponItem "rhs_acc_1p87";
this addPrimaryWeaponItem "rhs_30Rnd_545x39_7N22_plum_AK";

comment "Add containers";
this forceAddUniform "CUP_U_O_RUS_BeigeDigital_MSV";
this addVest "CUP_Vest_RUS_6B45_Sh117_BeigeDigital";
this addBackpack "CUP_O_RUS_Patrol_bag_BeigeDigital";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 3 do {this addItemToUniform "rhs_30Rnd_545x39_7N6_AK";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {this addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_salineIV";};
this addItemToBackpack "ACE_surgicalKit";
this addHeadgear "CUP_H_RUS_6B47_v2_BeigeDigital";
this addGoggles "PBW_Balaclava_schwarz";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
