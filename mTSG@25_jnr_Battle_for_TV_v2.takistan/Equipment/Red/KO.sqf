
comment "Add weapons";
this addWeapon "hlc_rifle_ak12";
this addPrimaryWeaponItem "RH_eothhs1";
this addPrimaryWeaponItem "rhs_30Rnd_545x39_7N22_plum_AK";
this addWeapon "rhs_weap_makarov_pm";
this addHandgunItem "rhs_mag_9x18_8_57N181S";

comment "Add containers";
this forceAddUniform "CUP_U_O_RUS_BeigeDigital_MSV";
this addVest "CUP_Vest_RUS_6B45_Sh117_BeigeDigital";
this addBackpack "TFAR_mr3000_bwmod_tropen";

comment "Add binoculars";
this addWeapon "rhs_pdu4";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_545x39_7N22_plum_AK";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_30Rnd_545x39_AK_plum_green";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rdg2_white";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_rgd5";};
this addHeadgear "CUP_H_RUS_6B47_v2_BeigeDigital";
this addGoggles "PBW_Balaclava_beigeR";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";