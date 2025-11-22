

comment "Add weapons";
this addWeapon "rhs_pzn_weap_akmn";
this addPrimaryWeaponItem "rhs_acc_dtkakm";
this addPrimaryWeaponItem "rhs_30Rnd_762x39mm_bakelite";

comment "Add containers";
this forceAddUniform "LOP_U_CHR_Doctor_01";
this addBackpack "rhs_assault_umbts";

comment "Add items to containers";
this addItemToUniform "rhs_30Rnd_762x39mm_bakelite";
for "_i" from 1 to 3 do {this addItemToBackpack "ACE_personalAidKit";};
for "_i" from 1 to 15 do {this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {this addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {this addItemToBackpack "ACE_salineIV";};
this addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_30Rnd_762x39mm_bakelite";};
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_30Rnd_762x39mm_bakelite_tracer";};
this addItemToBackpack "rhs_mag_m67";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_an_m8hc";};
this addHeadgear "H_ShemagOpen_khk";
this addGoggles "BWA3_G_Combat_black";


comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "TFAR_microdagr";
this linkItem "ItemRadio";
this linkItem "ItemGPS";
