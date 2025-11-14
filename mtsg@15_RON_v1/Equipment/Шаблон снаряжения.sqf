// Оружие с обвесом (внимание! теперь магазины автоматически удаляются скриптом при прогрузке в игру, однако, если не зарядить основное оружие, будет высвечиваться ошибка), если РПГ не нужен, просто стираем строки:
_unit addWeapon "РПГ";
_unit addSecondaryWeaponItem "ПРИЦЕЛ РПГ";
_unit addWeapon "ОРУЖИЕ";
_unit addPrimaryWeaponItem "ОБВЕС1 (ДТК например)";
_unit addPrimaryWeaponItem "ОБВЕС2 (прицел например)";
_unit addItem "МАГАЗИН";

_unit addWeapon "БИНОКЛЬ (если нужен, иначе стереть строку)";

// Одежда с предметами:
_unit forceAddUniform "ОДЕЖДА";

// Жилет со снарягой:
_unit addVest "Бронежилет";
for '_i' from 1 to 5 do { _unit addItemToVest'ДОБАВИТЬ 5 МАГАЗИНОВ В ЖИЛЕТ';};

// Рюкзак со снаряжением:
_unit addBackpack "РЮКЗАК";
for '_i' from 1 to 2 do { _unit addItemToBackpack 'ДОБАВИТЬ 2 ПРЕДМЕТА (например 2 оск гранаты)';};
for '_i' from 1 to 2 do { _unit addItemToBackpack 'ДОБАВИТЬ 2 ПРЕДМЕТА (например 2 дым гранаты)';};

// Надеваем шлем:
_unit addHeadgear "ШЛЕМ";

//Базовая снаряга: карта, компас, часы, рация, GPS:
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
