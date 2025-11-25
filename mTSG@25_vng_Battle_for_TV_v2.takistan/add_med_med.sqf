if (!isServer) exitWith {};

{      
	(uniformContainer _x) additemcargoGlobal ["ACE_Flashlight_XL50", 1];//фонарик для карты
	(uniformContainer _x) additemcargoGlobal ["ACE_Chemlight_HiGreen", 2];//химсвет
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
		(backpackContainer _x) additemcargoGlobal ["ACE_fieldDressing",18];
		(backpackContainer _x) additemcargoGlobal ["ACE_elasticBandage",18];
		(backpackContainer _x) additemcargoGlobal ["ACE_packingBandage",18];
		(backpackContainer _x) additemcargoGlobal ["ACE_quikclot",18];
		(backpackContainer _x) additemcargoGlobal ["ACE_epinephrine",6];
		(backpackContainer _x) additemcargoGlobal ["ACE_morphine",6];
		(backpackContainer _x) additemcargoGlobal ["ACE_tourniquet",5];
		(backpackContainer _x) additemcargoGlobal ["ACE_surgicalKit",1];
		(backpackContainer _x) additemcargoGlobal ["ACE_adenosine",6];
		(backpackContainer _x) additemcargoGlobal ["ACE_salineIV",10];
		(backpackContainer _x) additemcargoGlobal ["ACE_tourniquet",10];
	};

} forEach playableUnits;
