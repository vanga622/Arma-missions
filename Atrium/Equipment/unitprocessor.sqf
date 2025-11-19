_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;

random_RU_uniform = [
"FGN_M88_VSR_VDV",
"FGN_M88_VSR_VDV",
"FGN_M88_KhakiVSR_VDV",
"FGN_M88_VSR2_VDV",
"TU_Gorka1"
];

random_GRU_headgear = [
"H_Bandanna_khk",
"H_Bandanna_khk",
"FGN_CauR_Beanie_Black",
"FGN_CauR_Beanie_Brown",
"rhs_beanie_green",
"rhs_beanie"
];

random_GRU_vest = [
"FGN_RU_6B513_Khaki",
"FGN_RU_6B513_VSR",
"FGN_RU_6B513",
"FGN_RU_6B513_VKhaki"
];

random_GRU_vest_officer = [
"FGN_RU_6B513_Khaki_Officer",
"FGN_RU_6B513_VSR_Officer",
"FGN_RU_6B513_Officer",
"FGN_RU_6B513_VKhaki_Officer"
];

random_GRU_weapon_aks74 = [
"rhs_weap_aks74",
"rhs_weap_aks74_2",
"rhs_pzn_weap_ak74"
];

random_MSV_weapon_ak74 = [
"rhs_weap_aks74",
"rhs_weap_aks74_2",
"rhs_weap_ak74",
"rhs_weap_ak74_2",
"rhs_pzn_weap_ak74",
"rhs_pzn_weap_ak74"
];

random_MSV_weapon_ak74n = [
"rhs_weap_aks74n",
"rhs_weap_ak74n",
"rhs_pzn_weap_ak74n",
"rhs_pzn_weap_ak74n"
];

random_Srochnik_uniform = [
"FGN_M88_VSR_VDV",
"FGN_M88_VSR_VDV",
"FGN_M88_KhakiVSR_VDV",
"FGN_M88_VSR2_VDV"
];

random_Srochnik_vest = [
"rhs_6b5_khaki",
"rhs_6b5_vsr",
"rhs_6b5"
];

random_Srochnik_vest_officer = [
"rhs_6b5_officer_khaki",
"rhs_6b5_officer_vsr",
"rhs_6b5_officer"
];

random_Srochnik_headgear = [
"FGN_SSH68_VSR",
"FGN_SSH68_VSR2",
"FGN_SSH68_Khaki"
];

random_Srochnik_scope = [
"rhs_acc_1p29",
"rhs_acc_pso1m2"
];

random_NVF_uniform_spn = [
"FGN_CauR_Smock_BlackWoodland",
"FGN_CauR_Smock_Woodland"
];

random_NVF_uniform = [
"FGN_CauR_M88_M81",
"FGN_CauR_M93_M81",
"LOP_U_UA_Fatigue_01",
"LOP_U_UA_Fatigue_01",
"LOP_U_UA_Fatigue_02",
"LOP_U_UA_Fatigue_02",
"LOP_U_UA_Fatigue_04",
"FGN_CauR_M88_M81Green",
"FGN_CauR_M88_M81Black"
];

random_NVF_vest_spn = [
"FGN_RU_V95_KKO_2",
"FGN_RU_V95_KKO_Urban_2",
"FGN_RU_V95_Kamysh_2"
];

random_NVF_vest = [
"LOP_V_Chestrig_Kamysh",
"LOP_V_Chestrig_VSR",
"V_TacVest_oli",
"rhssaf_vest_md99_md2camo_rifleman"
];

random_NVF_headgear = [
"H_Booniehat_oli",
"FGN_CauR_Beanie_Woodland",
"rhssaf_booniehat_woodland",
"H_Beret_blk",
"TRYK_H_pakol2",
"LOP_H_Turban",
"LOP_H_Turban_mask",
"LOP_H_Ushanka",
"TRYK_H_woolhat_br",
"TRYK_H_woolhat_cu"
];

random_NVF_beard = [
"TRYK_Beard_BK",
"TRYK_Beard_BK2",
"TRYK_Beard_BK3",
"TRYK_Beard_BK4",
"TRYK_Beard_BW",
"TRYK_Beard_BW2",
"TRYK_Beard_BW3",
"TRYK_Beard_BW4",
"TRYK_Beard_Gr",
"TRYK_Beard_Gr2",
"TRYK_Beard_Gr3",
"TRYK_Beard_Gr4"
];

_item_processor = {
	removeAllItems _this;
	removeAllWeapons _this;
	removeAllItemsWithMagazines _this;
	removeAllAssignedItems _this;
	
	removeUniform _this;
	removeBackpack _this;
	removeHeadgear _this;
	removeVest _this;
};

if (!isServer) exitWith {};

_unit call _item_processor;

_svn = format ["SerP_equipment_codes_%1_%2",_faction, _loadout];
if (isNil _svn) then
{
	missionNamespace setVariable [_svn, 
		compile preprocessFileLineNumbers format ["Equipment\%1\%2.sqf", _faction, _loadout]
	];
};

[_unit] call (missionNamespace getVariable [_svn, {}]);


