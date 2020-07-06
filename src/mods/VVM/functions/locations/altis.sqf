/* Name: altis.sqf
 * Description: Returns an array of laction data for the map called Altis.
 * Author: vigil.vindex@gmail.com
 * Licence: https://creativecommons.org/licenses/by-sa/3.0/
 * Last Updated: 2020-06-08
 * Returns: array [NAME,TYPE,POSITION[x,y,z],RADIUS-X,RADIUS-Y,ANGLE]
 * Arguments:
 *   0 - Debug: (boolean) true/false
 * Example: _locations_array = [true] call VVM_fnc_getMapLocations;
 * TODO:
 *   - Add fuel, hospital, farm and radio locations for Altis.
 *   - Add IMPORTANCE values.
 */
private ["_debug","_worldName","_locations"];
_debug = _this select 0;
_worldName = worldName;
if (_debug) then {diag_log format ["#%1# VVM_fnc_getMapLocationsAltis.sqf # _worldName = %2",time,_worldName];};
switch (toLower(_worldName)) do {
  case "altis": {
    _locations = [
      // Castles
      ["Castle1",                     "castle",   [4802.99,21855.5,-320.955],       500,300,0],
      ["Thronos",                     "castle",   [4858.1392,345.0163,21933.42],    200,200,0],
      // Camps
      ["Military1",                   "camp",     [12771.6,16694.3,-85.9974],       100,100,0],
      ["Military2",                   "camp",     [15137.2,17297.8,-17.8604],       100,100,0],
      ["Military3",                   "camp",     [16030.4,17004.8,-13.5195],       100,100,0],
      ["Military4",                   "camp",     [23533.2,21108,-92.5423],         100,100,0],
      ["Military5",                   "camp",     [25350.6,21790.9,-79.3826],       100,100,0],
      // Radio Stations
      // Airstrips
      ["AAC",                         "airstrip", [11461.2,11661.7,-22.9852],       100,100,0],
      ["Altis",                       "airstrip", [14037.6,16143.3,-20.5917],       100,100,0],
      ["Molos",                       "airstrip", [26939.8,24743.8,-20.3838],       100,100,0],
      // Fuel Stations
      // Terminals
      ["Terminal 1",                  "terminal", [14522.4,16833.9,-17.5812],       100,100,0],
      // Farms
      // Dams
      ["Xirolimni",                   "dam",      [9115.22,13959.8,-30.247],        100,100,0],
      // Power Stations
      ["PowerPlant1",                 "power",    [15420.8,16223.6,-9.61744],       100,100,0],
      ["PowerPlant2",                 "power",    [4163.6,15047.2,-17.0033],        100,100,0],
      ["PowerPlant3",                 "power",    [25462.6,20357.7,-9.55156],       100,100,0],
      // Hospitals
      // Dumps
      ["Dump1",                       "dump",     [5900.47,12454.4,-110.621],       277,210,0],
      ["Dump2",                       "dump",     [5887.13,20236.5,-214.292],       277,210,0],
      // Stadiums
      ["Stadium1",                    "stadium",  [5429.69,14996.7,-25.8915],       400,200,0],
      // Quarries
      ["Quarry1",                     "quary",    [17060.5,11339.1,-24.4416],       100,100,0],
      ["Quarry2",                     "quary",    [4379.15,12594.4,-39.3548],       100,100,0],
      ["Quarry3",                     "quary",    [19566.4,15617.3,-43.9734],       100,100,0],
      // Mines
      ["Mine1",                       "mine",     [18435.1,14301.8,-25.5322],       100,100,0],
      // Factories
      ["Factory1",                    "factory",  [12577.4,16352.8,-34.1307],       100,100,0],
      ["Factory2",                    "factory",  [5307.12,14500.1,-20.4377],       100,100,0],
      ["Factory3",                    "factory",  [6109.49,16246.2,-43],            100,100,0],
      ["Factory4",                    "factory",  [14294.6,18928.5,-36.7832],       100,100,0],
      // Storage
      ["Storage1",                    "storage",  [18260.6,15551.2,-47.3991],       100,100,0],
      // Cities
      ["AgiosDionysios",              "city",     [9187.95,15947.8,-124.829],       100,100,0],
      ["Athira",                      "city",     [13993,18709.4,-25.735],          500,307,0],
      ["Chalkeia",                    "city",     [20194.6,11660.7,-45.8388],       500,200,0],
      ["Charkia",                     "city",     [18049.1,15264.1,-28.4237],       400,200,0],
      ["Dorida",                      "city",     [19336.9,13252.3,-37.8615],       500,200,0],
      ["Frini",                       "city",     [14612.5,20786.7,-47.0032],       371,325,0],
      ["Gravia",                      "city",     [14479.8,17614.3,-21.6749],       735,250,0],
      ["Kalochori",                   "city",     [21351.6,16361.9,-20.5678],       400,150,0],
      ["Kavala",                      "city",     [3458.95,12966.4,-6.1822],        500,200,0],
      ["Kore",                        "city",     [7062.42,16472.1,-116.425],       372,447,0],
      ["Lakka",                       "city",     [12282,15732.3,-23.0026],         500,200,0],
      ["Molos",                       "city",     [26943.9,23170.7,-18.0848],       350,200,0],
      ["Neochori",                    "city",     [12502,14337,-11.5868],           500,250,0],
      ["Paros",                       "city",     [20885.4,16958.8,-49.8089],       450,180,0],
      ["Poliakko",                    "city",     [10966.5,13435.3,-28.4601],       500,250,0],
      ["Pyrgos",                      "city",     [16780.6,12604.5,-18.9913],       500,200,0],
      ["Rodopoli",                    "city",     [18753.4,16597.1,-32.1656],       500,300,0],
      ["Sofia",                       "city",     [25680.5,21365.1,-20.7333],       500,250,0],
      ["Syrta",                       "city",     [8625.13,18301.6,-179.297],       500,250,0],
      ["Telos",                       "city",     [8625.13,18301.6,-179.297],       500,250,0],
      ["Zaros",                       "city",     [9091.81,11961.9,-19.9013],       500,200,0],
      // Towns
      ["AgiaPelagia",                 "town",     [22707.6,6930.57,-14.5643],       100,100,0],
      ["AgiosGeorgios",               "town",     [20296.3,18635.1,-49.9897],       100,100,0],
      ["AgiosKosmas",                 "town",     [8555.32,7335.51,-12.281],        100,100,0],
      ["AgiosPanagiotis",             "town",     [6272.75,12173.9,-169.473],       100,100,0],
      ["Aktinarki",                   "town",     [21449.9,10873.8,-13.4104],       400,150,0],
      ["Almyra",                      "town",     [23495.6,18392.6,-3.19],          400,250,0],
      ["Amfissa",                     "town",     [8088.81,17257.7,-150.162],       200,150,0],
      ["Aristi",                      "town",     [7914.05,21305.2,-83.2944],       277,210,0],
      ["Athanos",                     "town",     [8088.81,17257.7,-150.162],       300,100,0],
      ["Atsalis",                     "town",     [8304.83,25081.2,-77.0965],       100,100,0],
      ["Bomos",                       "town",     [2307.31,22165.2,-94.7805],       600,250,0],
      ["CapAgrios",                   "town",     [14688.2,23496.2,-22.4582],       100,100,0],
      ["CapDrakontas",                "town",     [2657.32,11461.5,-21.2495],       100,100,0],
      ["CapKategidis",                "town",     [22792,13638.4,-16.6444],         100,100,0],
      ["CapMakrinos",                 "town",     [14225.9,6237.99,-0.125886],      100,100,0],
      ["CapStrigla",                  "town",     [28059.2,25626.4,-33.4305],       100,100,0],
      ["CapThelos",                   "town",     [24067.6,15560.3,-11.5846],       100,100,0],
      ["CapZefyris",                  "town",     [18049.3,19186.6,-16.9618],       100,100,0],
      ["Chelonisi",                   "town",     [16636.5,13582.2,-12.1916],       100,100,0],
      ["Drimea",                      "town",     [10781.9,10881.6,-4.18781],       450,200,0],
      ["Edessa",                      "town",     [7194.23,11044,0],                300,130,0],
      ["Edoris",                      "town",     [6002.75,10511.4,-39.4888],       400,150,0],
      ["Eginio",                      "town",     [11549.2,7088.39,-83.8615],       300,200,0],
      ["Faronaki",                    "town",     [14934.4,11079.5,-8.38552],       400,150,0],
      ["Faros",                       "town",     [6565.3,22639.1,-94.2945],        433,328,0],
      ["Fotia",                       "town",     [2993.48,18517.4,-31.7708],       260,198,0],
      ["Fournos",                     "town",     [2313.67,9289.31,-11.5702],       100,100,0],
      ["Gatolia",                     "town",     [26723,21230.3,-15.8345],         220,100,0],
      ["Gori",                        "town",     [5455.72,17553.7,-70.9608],       500,250,0],
      ["Iraklia",                     "town",     [21628.3,21274.9,-21.5588],       400,200,0],
      ["Kastro",                      "town",     [3041.4,13162.8,-49.9934],        300,150,0],
      ["Kavirida",                    "town",     [7324.24,12125.4,-31.3799],       300,150,0],
      ["KryaNera",                    "town",     [9681.58,22294.5,-2.82557],       100,100,0],
      ["Limni",                       "town",     [20920.8,14775.4,-2.11256],       500,200,0],
      ["Limnichori",                  "town",     [25703.7,23561.6,-4.22667],       400,100,0],
      ["Livadi",                      "town",     [18410.5,8098.3,-1.81681],        150,100,0],
      ["Makrynisi",                   "town",     [13471.9,12018.5,-12.1029],       100,100,0],
      ["Mazi",                        "town",     [21772.4,6014.53,-7.89761],       150,100,0],
      ["Monisi",                      "town",     [7813.36,7641.19,-1.39881],       100,100,0],
      ["Nidasos",                     "town",     [23662.9,21796.1,-52.2432],       300,100,0],
      ["Nychi",                       "town",     [16837.4,21890,-9.70004],         500,250,0],
      ["Ochrolimni",                  "town",     [23650.1,16227.3,-5.27635],       400,150,0],
      ["Oreokastro",                  "town",     [4586.1104,299.59027,21408.785],  200,200,0],
      ["Polemistia",                  "town",     [27998.6,23775.8,0.0171411],      400,200,0],
      ["Pyrgi",                       "town",     [14489.9,5871.7,-12.2289],        100,100,0],
      ["Savri",                       "town",     [2370.95,11507,-19.6032],         100,100,0],
      ["Sfaka",                       "town",     [9213.95,8079.03,-43.0843],       300,150,0],
      ["Sideras",                     "town",     [23274.5,24198.3,-0.0185924],     400,150,0],
      ["SurfClub",                    "town",     [21339.4,10434,-4.49371],         100,100,0],
      ["Trachia",                     "town",     [22128.1,8453.98,-5.96645],       200,100,0],
      ["Vikos",                       "town",     [11556.9,9417.06,-19.3987],       250,100,0],
      ["Zeloran",                     "town",     [17043.5,19592.2,-5.22081],       150,600,0],
      // Villages
      ["Abdera",                      "village",  [9425.42,20284,-122.26],          453,250,0],
      ["Aggelochori",                 "village",  [3687.78,13776.1,-10.7639],       400,100,0],
      ["AgiaTriada",                  "village",  [16668.5,20487,-4.767],           100,100,0],
      ["AgiosKonstantinos",           "village",  [3948.77,17277.8,-11.6385],       100,100,0],
      ["AgiosPetros",                 "village",  [19339.4,17641.6,-37.4067],       100,100,0],
      ["Alikampos",                   "village",  [11112.6,14573.7,-42.5353],       450,250,0],
      ["Anthrakia",                   "village",  [16584.3,16104,-15.1762],         500,250,0],
      ["Delfinaki",                   "village",  [23908.6,20144.7,-14.0692],       350,140,0],
      ["Ekali",                       "village",  [17059.7,9992.32,-21.8159],       400,150,0],
      ["Feres",                       "village",  [21640.7,7583.93,-14.1929],       300,150,0],
      ["Galati",                      "village",  [10270.3,19036,-120.191],         630,250,0],
      ["Ifestiona",                   "village",  [12787,19679.3,-46.1323],         500,177,0],
      ["Ioannina",                    "village",  [23199.7,19986.6,-14.2541],       350,120,0],
      ["Kalithea",                    "village",  [17826.5,18129.4,-1.99341],       300,120,0],
      ["Katalaki",                    "village",  [11701.1,13672.1,-12.7303],       450,200,0],
      ["Koroni",                      "village",  [11786.7,18372.4,-51.9314],       500,329,0],
      ["Negades",                     "village",  [4885.98,16171.3,-77.5036],       400,200,0],
      ["Neri",                        "village",  [4116.11,11736.1,-50.8535],       400,170,0],
      ["Nifi",                        "village",  [19473.3,15453.7,-22.9098],       400,200,0],
      ["Oreokastro",                  "village",  [4560.45,21460.6,-302.575],       800,300,0],
      ["Orino",                       "village",  [10410.4,17243.1,-82.7311],       450,200,0],
      ["Panagia",                     "village",  [20490.2,8907.12,-34.5332],       300,110,0],
      ["Panochori",                   "village",  [5033.31,11245.2,-48.317],        500,150,0],
      ["Sagonisi",                    "village",  [14281.2,13469.3,-5.32024],       100,100,0],
      ["Selakano",                    "village",  [20769.8,6736.46,-37.9427],       350,120,0],
      ["Stavros",                     "village",  [12950.1,15041.6,-28.1891],       400,250,0],
      ["Therisa",                     "village",  [10618.9,12237.3,-16.0326],       400,200,0],
      ["Topolia",                     "village",  [7375.81,15429.5,-54.782],        400,100,0],
      // Hills
      ["Agela",                       "hill",     [9186.34,8388.44,-91.9151],       400,150,0],
      ["AgiaStemma",                  "hill",     [7883.58,14626.4,-277.822],       100,100,0],
      ["AgiosAndreas",                "hill",     [23682.9,24239.3,-76.0679],       100,100,0],
      ["AgiosMinas",                  "hill",     [7846.96,18005.4,-229.96],        100,100,0],
      ["Amoni",                       "hill",     [7859.98,16673.6,-253.183],       300,200,0],
      ["Didymos",                     "hill",     [17768.9,9914.41,-165.189],       200,100,0],
      ["Hill1",                       "hill",     [10729.8,7615.71,-240.925],       100,100,0],
      ["Hill10",                      "hill",     [14574.4,21994.8,-111.789],       100,100,0],
      ["Hill2",                       "hill",     [6405.69,12365.6,-231.25],        100,100,0],
      ["Hill3",                       "hill",     [7048.1,14070.4,-218.091],        100,100,0],
      ["Hill4",                       "hill",     [5320.31,10316,-124.895],         100,100,0],
      ["Hill5",                       "hill",     [16536,10787.2,-102.865],         100,100,0],
      ["Hill6",                       "hill",     [4188.99,10754.9,-156.821],       100,100,0],
      ["Hill7",                       "hill",     [18832.1,10222,-215.274],         100,100,0],
      ["Hill8",                       "hill",     [10748.9,20401,-209.519],         100,100,0],
      ["Hill9",                       "hill",     [4162.73,19455.5,-309.517],       100,100,0],
      ["Kira",                        "hill",     [4808.18,17694.3,-239.068],       100,100,0],
      ["Magos",                       "hill",     [4564.72,15393.3,-264.323],       300,100,0],
      ["Pyrsos",                      "hill",     [9127.1,19271.7,-267.827],        500,250,0],
      ["Riga",                        "hill",     [9187.74,11502.5,-109.139],       100,100,0],
      ["Skiptro",                     "hill",     [24833.9,21802.1,-94.7143],       250,100,0],
      ["Skopos",                      "hill",     [11669,7579.91,-253.829],         300,150,0],
      ["Synneforos",                  "hill",     [6513.79,21604.7,-299.394],       600,250,0],
      ["Tafos",                       "hill",     [5588.86,11749.7,-216.604],       300,100,0],
      ["Thronos",                     "hill",     [4919.32,21951.7,-340.306],       347,263,0],
      // Bays
      ["Ammolofi",                    "bay",      [9525.44,22649,0.0158948],        100,100,0],
      ["Chalkeia",                    "bay",      [21859.6,12594.9,0.083105],       100,100,0],
      ["Edessa",                      "bay",      [6862.33,10614.1,0.0176018],      100,100,0],
      ["GalanaNera",                  "bay",      [24924.1,24206.6,-0.0161762],     100,100,0],
      ["Iremi",                       "bay",      [5117.63,9761.5,0.122519],        100,100,0],
      ["Kalithea",                    "bay",      [18161,18676.6,-0.290001],        100,100,0],
      ["Katalaki",                    "bay",      [12269.8,13659.3,0.11163],        100,100,0],
      ["KavalaPier",                  "bay",      [3014.83,12587.3,-2.57609],       100,100,0],
      ["Kavala",                      "bay",      [3004.58,13675.9,0.0208691],      100,100,0],
      ["Mazi",                        "bay",      [22181.4,6154.23,0.0549791],      100,100,0],
      ["Melanera",                    "bay",      [11226.2,10574.7,-0.033143],      100,100,0],
      ["Molos",                       "bay",      [27826.8,24244.4,-0.0321551],     100,100,0],
      ["Naftia",                      "bay",      [12157.6,6376.24,0.29521],        100,100,0],
      ["Negades",                     "bay",      [3458.04,16859.6,-0.173402],      100,100,0],
      ["Neri",                        "bay",      [3166,11234.2,-0.084525],         100,100,0],
      ["Panochori",                   "bay",      [4005.29,9908.59,0.194357],       100,100,0],
      ["Pefkas",                      "bay",      [21204.7,20464.6,-0.0248468],     100,100,0],
      ["Pyrgos",                      "bay",      [15139.2,14229.9,0.0182504],      100,100,0],
      ["Thelos",                      "bay",      [22979.7,14939,0.186379],         100,100,0],
      ["Tonos",                       "bay",      [11988.3,22985.7,-0.0703174],     100,100,0],
      ["Zaros",                       "bay",      [11556.9,9417.06,-19.3987],       100,100,0]
    ];
  };
};
if (_debug) then {
  diag_log format ["#%1# vv_fnc_get_map_locations.sqf # _locations = %2",time,count _locations];
  { diag_log format ["#%1# vv_fnc_get_map_locations.sqf # %2",time,_x]; } forEach _locations;
};
// Return array.
_locations
