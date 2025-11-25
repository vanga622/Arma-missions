//**** ВНИМАНИЕ!!!
//**** ДАННЫЕ НАСТРОЙКИ ТЕРЯЮТ АКТУАЛЬНОСТЬ ПРИ УСТАНОВЛЕННОМ МОДУЛЕ АНАЛОГИЧНЫХ НАСТРОЕК ПЛАТФОРМЫ

// Размер зоны для игроков на время подготовки
prepareZoneSize = 250;
blueforprepareZonemod = 1;
opforprepareZonemod = 1;

//более тонкие настройки фриззоны, подробней см. пункт 3: https://tsgames.ru/forum/post/34760
opforprepareVehClassesShow[] = {}; //класс техники, видимый на брифинге, пустой массив — видно все. Метод команды entities
opforprepareVehClassesHide[] = {}; //класс техники, скрытой на брифинге, пустой массив — видно все. Метод команды entities
opforprepareVehHide[] = {}; //переменные техники, скрытой на брифинге
blueforprepareVehClassesShow[] = {};
blueforprepareVehClassesHide[] = {};
blueforprepareVehHide[] = {};

opforprepareFreezetimeZones[] = {}; //маркеры фриззоны, пустой {} — обычная фриззона
opforprepareFreezetimeCondition[] = {}; //доп. условие фриззоны. Может содержать любой код, возвращающий булево значение;  false — игрок телепортируется обратно
blueforprepareFreezetimeZones[] = {};
blueforprepareFreezetimeCondition[] = {};

// Противоборствующие стороны ("WEST", "EAST", "INDEPENDENT")
blueforSide = "INDEPENDENT";
opforSide =  "EAST";

// Интро (0 - нет, 1 - да)
UAVIntro = 0;

// Разрешить использовать T-Cube Motion Tracker (Fireteam HUD)? (0 - нет, 1 - да)
fireteamHUD = 0;

// Дистанция обзора (должна быть не менее 200 метров)
viewDistance = 650;


// Отключать возможность выбора дистанции обзора игроком от 200м до максимальной дистанции, установленной выше
Disable_ViewDistance_Dialog = 0;

// Раздавать игрокам ПНВ в светлое время суток (0 - нет, 1 - да)
daytimeNVG = 0;

// Отображать диалог выбора оружия. Иначе - выдавать первые виды оружия из массивов основного, второстепенного и пистолетов
equipmentDialog = 0;


//**** ВНИМАНИЕ!!!
//**** ДАННЫЕ НАСТРОЙКИ ТЕРЯЮТ АКТУАЛЬНОСТЬ ПРИ УСТАНОВЛЕННОМ МОДУЛЕ АНАЛОГИЧНЫХ НАСТРОЕК ПЛАТФОРМЫ