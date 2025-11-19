
comment "Add weapons";
this addWeapon "hlc_rifle_ak12";
this addPrimaryWeaponItem "rhs_30Rnd_545x39_7N10_AK";
this addWeapon "rhs_weap_rshg2";
this addSecondaryWeaponItem "rhs_rshg2_mag";

comment "Add containers";
this forceAddUniform "CUP_U_B_BAF_MTP_UBACSTSHIRTKNEE";
this addVest "LOP_V_6B23_UN";
this addBackpack "tfw_ilbe_a_wd";

comment "Add binoculars";
this addWeapon "TU_B8_Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {this addItemToUniform "rhs_30Rnd_545x39_7N10_AK";};
this addHeadgear "rhs_6b26_ess_green";
this addGoggles "rhsusf_shemagh2_gogg_white";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";

