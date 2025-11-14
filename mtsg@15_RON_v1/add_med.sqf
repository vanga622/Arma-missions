if (!isServer) exitWith {};
{      
	(uniformContainer _x) additemcargoGlobal ["ACE_fieldDressing", 4];
	(uniformContainer _x) additemcargoGlobal ["ACE_elasticBandage", 4];
	(uniformContainer _x) additemcargoGlobal ["ACE_packingBandage", 4];
	(uniformContainer _x) additemcargoGlobal ["ACE_quikclot", 4];
	(uniformContainer _x) additemcargoGlobal ["ACE_tourniquet", 1];
	(uniformContainer _x) additemcargoGlobal ["ACE_morphine", 2];
	(uniformContainer _x) additemcargoGlobal ["ACE_epinephrine", 2];
	(uniformContainer _x) additemcargoGlobal ["ACE_EarPlugs", 1];	
	if (_x == (leader group _x)) then {(uniformContainer _x) additemcargoGlobal ["ACE_MapTools", 1];};//Линейки Командирам

	if (_x getVariable "ace_medical_medicClass" > 0) then 
	{
		clearItemCargoGlobal (backpackContainer _x);
		clearMagazineCargoGlobal (backpackContainer _x);
		clearWeaponCargoGlobal (backpackContainer _x);
        (backpackContainer _x) additemcargoGlobal ["ACE_fieldDressing",15];
		(backpackContainer _x) additemcargoGlobal ["ACE_elasticBandage",15];
		(backpackContainer _x) additemcargoGlobal ["ACE_packingBandage",15];
		(backpackContainer _x) additemcargoGlobal ["ACE_quikclot",15];
		(backpackContainer _x) additemcargoGlobal ["ACE_epinephrine",15];
		(backpackContainer _x) additemcargoGlobal ["ACE_morphine",15];
		(backpackContainer _x) additemcargoGlobal ["ACE_salineIV_500",4];
		(backpackContainer _x) additemcargoGlobal ["ACE_surgicalKit",1];
		(backpackContainer _x) additemcargoGlobal ["ACE_personalAidKit",1];
	};

} forEach playableUnits;
