
comment "Add weapons";
this addWeapon "hlc_rifle_hk51";
this addPrimaryWeaponItem "hlc_20rnd_762x51_b_G3";
this addWeapon "RH_fn57_g";
this addHandgunItem "RH_20Rnd_57x28_FN";

comment "Add containers";
this forceAddUniform "rhs_uniform_abu";
this addBackpack "TFAR_anprc155_coyote";

comment "Add binoculars";
this addWeapon "TU_B8_Binocular";

comment "Add items to containers";
for "_i" from 1 to 3 do {this addItemToUniform "hlc_20rnd_762x51_b_G3";};
for "_i" from 1 to 3 do {this addItemToBackpack "RH_20Rnd_57x28_FN";};
for "_i" from 1 to 4 do {this addItemToBackpack "hlc_20rnd_762x51_b_G3";};
for "_i" from 1 to 3 do {this addItemToBackpack "hlc_20rnd_762x51_Mk316_G3";};
this addItemToBackpack "hlc_20rnd_762x51_T_G3";
this addHeadgear "rds_police_cap";
this addGoggles "PBW_Brille_schwarz";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";