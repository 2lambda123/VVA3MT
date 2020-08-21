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
private["_military_buildings"];
_military_buildings = [
  [15460.3,15751,-0.269979],
  [15283.1,15858.3,-0.0152922],
  [15372.2,15851.1,-0.063179],
  [15280.5,15893.7,-0.0298834],
  [15517.7,15767.8,-0.0136108],
  [15297.1,15896.7,-0.0045805],
  [15361.3,15887.1,0.0144501],
  [15488.4,15895.9,-0.00283575],
  [15481.7,15912.8,0.00267601],
  [15345.5,16214.4,-0.000174522],
  [15358.6,16216.5,-0.000563622],
  [14958.3,16284.1,-0.000488281],
  [14485.8,16331.2,-0.201883],
  [13760.4,15167.2,0.0127773],
  [14184.8,16225.9,0.00455284],
  [14191.5,16239.8,0.030056],
  [14199.1,16255.8,0.0269833],
  [14161.2,16245.7,-0.0560818],
  [13710.7,15213.5,0.0123386],
  [14138.3,16250.6,0.00226784],
  [14144.3,16262.3,0.00455475],
  [14125.6,16249.4,-0.00350952],
  [14188.7,16311.4,-0.00516891],
  [14129.7,16262,-0.001194],
  [14135.3,16275.1,-0.0063076],
  [14142.8,16287,-0.0219402],
  [14156.8,16305.8,-0.216808],
  [14179.9,16325.8,-0.00194931],
  [14198.5,16397.3,-0.209793],
  [15999.2,16831.1,0.00225449],
  [16109.5,16828.4,0.0252686],
  [16009.7,16900.3,0.291086],
  [14906.8,17159.4,0.00152779],
  [15973.4,16978.9,-0.000696182],
  [15933.5,17014.1,0.0186539],
  [16001.2,16982.7,-0.00927353],
  [15944.3,17014,0.0195179],
  [15954.6,17013.9,0.027626],
  [15934.8,17032.9,-0.027668],
  [15956.2,17028.9,0.00573826],
  [16157.7,16913.6,0.00344276],
  [15911.9,17055.9,-0.140062],
  [15956.3,17037.7,0.0380955],
  [15938.5,17051,-0.0189533],
  [15933.7,17058.8,-0.00225353],
  [15947.2,17055.3,0.00495434],
  [15929,17067,-0.00838661],
  [15943,17063.9,0.0109301],
  [15938.1,17072.2,0.0151825],
  [15958,17072.2,-0.00366688],
  [15952.8,17080.5,-0.00160217],
  [15986.9,17090.2,0.00154591],
  [15980.4,17100.8,-0.00288105],
  [16002.2,17098.8,-0.00242043],
  [15161.4,17317.4,-0.000289917],
  [15153.5,17320.8,-0.00148773],
  [15996.1,17109.2,-0.00198078],
  [16010.1,17103.8,0.00274181],
  [15170.6,17325.4,0.0013237],
  [15214.9,17329,0.00199318],
  [15144.4,17330.4,-0.00377846],
  [16003.9,17113.8,0.00473213],
  [15137.7,17341.1,-0.0177631],
  [16024.8,17114.6,0.00315857],
  [16188,17020.9,-0.00467873],
  [16018.9,17124,-0.00174713],
  [15145.8,17349.6,-0.0133228],
  [16038.1,17122.9,0.0100269],
  [16141.3,17074,0.026104],
  [15190.9,17366.2,-0.00078392],
  [15165.8,17369.4,-0.203703],
  [16053.7,17143.8,-0.00918961],
  [16216.4,17071.3,-0.0295086],
  [15368,17408.6,-0.277899],
  [15231.2,17435.6,-0.263973],
  [15349.3,17426.8,-0.290613],
  [15330.4,17444.3,-0.334442],
  [15288.7,17472.8,-0.224236],
  [13120.3,16347.5,-0.0278969],
  [15565.2,17442.6,-0.370265],
  [15282.9,17497.4,0.00727844],
  [13092,16339.3,-0.0121269],
  [15178.3,17514.3,0.00177288],
  [15188,17524.8,0.0202503],
  [14328.4,13060.3,-0.0434153],
  [14305.8,13067.8,-0.0640969],
  [14321.8,13060.3,-0.00690126],
  [14336.7,13046.1,0.0110168],
  [14296,13031.5,0.000890732],
  [14327.8,13013.7,0.0260806],
  [14287,13007.5,4.19617],
  [14280.5,13007.4,-0.000715256],
  [12675.8,14776.3,-0.361673],
  [14010.3,12971.7,0.0133209],
  [12903.3,16681.6,0.033905],
  [12467.2,15208.3,0.00748444],
  [12723.3,16398,-0.0746651],
  [12455.8,15206.2,-0.271194],
  [12443.3,15195.3,0.00402069],
  [12920.1,16769.6,-0.0548401],
  [12815.3,16633.5,-0.104042],
  [12823.5,16647,-0.0325623],
  [12843.5,16680.1,-0.165672],
  [12799,16620.4,-0.0299072],
  [12865.8,16771.8,-0.278709],
  [12796.6,16689.9,-0.0167542],
  [12642.1,16412,0.000202179],
  [12795,16705.1,-0.0269775],
  [12601.9,16345,-0.11982],
  [12800.3,16736.7,-0.159317],
  [12717.4,16715.6,-0.211624],
  [15160.5,18111.7,-0.0743408],
  [17184.1,13305.6,0.262775],
  [16693.2,12790.2,-0.00031662],
  [17314.2,13185.2,0.00621605],
  [16976,12870.8,0.00121498],
  [17341.3,13207.2,-0.0202475],
  [17347.6,13212.8,0.0207443],
  [17321.2,13177.5,0.00646114],
  [17414.3,13282.6,-0.013073],
  [17347.4,13199.4,-0.0149126],
  [17353.6,13204.9,0.0188036],
  [17365.6,13215.9,-0.0210981],
  [17371.8,13221.4,0.0146246],
  [17327.6,13170,0.00592899],
  [17342,13180.9,-0.0178719],
  [17353.5,13192.2,-0.0178852],
  [17359.5,13197.8,0.0191841],
  [17371.6,13208.7,-0.0219145],
  [17377.7,13214.3,0.0196323],
  [17348.4,13173.8,-0.0177546],
  [17359.8,13185,-0.0196152],
  [17366.1,13190.6,0.0177088],
  [17377.9,13201.6,-0.0217438],
  [17384.2,13207.1,0.0181751],
  [17424.6,13227.4,0.00172329],
  [17431.2,13234.3,-9.15527],
  [17014.5,12808.5,-0.291004],
  [17455.3,13227.4,-0.00466251],
  [17442.6,13210.9,0.0135803],
  [17462,13220.1,-0.00607777],
  [17373.7,13113.9,0.0223427],
  [17449.9,13191.5,0.00853825],
  [17456.9,13197.5,-6.00815],
  [17463.9,13204.2,0.00117683],
  [17478.1,13210.2,-0.00349426],
  [17455.5,13185.4,-0.014555],
  [17462.6,13191.6,-0.00812531],
  [17469.7,13198,-0.00319672],
  [17427.1,13126.3,1.14441],
  [17406.4,13088.2,-0.00140285],
  [17412.6,13080.5,-0.000102043],
  [17508.2,13183.6,0.0062542],
  [17427.8,13088.3,-0.00113392],
  [17460.4,13123.3,-0.00757885],
  [17442.2,13099.2,0.0410767],
  [17418.8,13073.5,-0.00118637],
  [17492.6,13156.4,-0.0174294],
  [17434.6,13081.4,0.00585556],
  [17425.5,13066.6,-0.00389671],
  [17517.5,13168.5,0.032465],
  [17524.3,13161.6,0.00978088],
  [17530.4,13154.7,-0.0393858],
  [17479.2,13087.3,-0.00384903],
  [17536.7,13146.9,-0.0756493],
  [17444.1,13039.1,-0.0273228],
  [17475.9,13071.8,-0.0253906],
  [17485.6,13079.6,-0.0132141],
  [18321.6,15274.2,-0.0638905],
  [17552.3,13135.2,-0.0196934],
  [17638.1,17298.1,-0.0855103],
  [18370.9,15487.9,-0.354115],
  [18386.7,15247.4,-0.0179977],
  [18398.7,15281.8,-0.00225449],
  [16638.6,12316,0.0518808],
  [16641.9,12277.1,-0.0433388],
  [18443.7,15275.4,-0.0594654],
  [16651.4,12275.4,-0.0122743],
  [16660.7,12274.6,-0.00282526],
  [11690.6,15916,0.00644684],
  [12548,12761.6,-0.0557537],
  [12515.7,12733.9,0.109596],
  [16836.7,12062.6,-0.016953],
  [16839.5,12044.1,0.0367432],
  [14293.6,18860.7,-0.0931244],
  [14399.3,18910.8,0.150734],
  [13820.5,18946.2,-0.0167427],
  [13826,18951.6,0.000188828],
  [11324.8,14147.7,-9.53674],
  [13837.8,18963,0.0285778],
  [13808.5,18967.4,-0.0881844],
  [13773,18956.5,0.011425],
  [15401,11343.1,0.0873642],
  [13832.6,18993.4,-0.00652313],
  [16561.7,18959.8,-0.081398],
  [16562.7,18999.5,-0.0307617],
  [16602.8,18993.4,0.0993843],
  [16590.6,19041.6,0.0501595],
  [16608.3,19046.4,0.25375],
  [18081.1,19196.1,0.0758438],
  [18097.6,19190.3,-0.321066],
  [14193.3,21195.1,-0.0545502],
  [14218.6,21202.3,0.0376282],
  [14227.7,21210.6,-0.622147],
  [14234.2,21235.8,-0.0912018],
  [14172.5,21228.8,-0.266724],
  [14231,21245.9,-0.165985],
  [14196.7,21247.5,-0.168648],
  [20336.8,18771.1,-0.0353394],
  [20348.5,18760,0.00547791],
  [10035.4,11257.5,-0.0830269],
  [10014.8,11229.3,-0.026123],
  [10011.9,11222.8,-0.029192],
  [10000.4,11234,0.0256882],
  [10004.4,11209.7,-0.0108871],
  [9977.54,19345.7,-0.00375366],
  [9977.36,19366.5,-0.000183105],
  [9965.83,19368.3,-0.00415039],
  [20580.3,18820.1,0.00770187],
  [20597.7,18799.6,-0.0021286],
  [9271.85,12145.1,-0.28808],
  [20629.9,18809.6,-0.0111198],
  [9934.46,19420.1,0.00128174],
  [12290.9,8940.05,-0.0779343],
  [20631.8,19406.1,0.0812607],
  [12306.7,8884.81,0.144394],
  [12304.7,8867.68,0.00975037],
  [20822.1,19184,0.0605755],
  [12289,8867.37,-0.102448],
  [21014.1,18974.1,-0.00108719],
  [21021.9,18989.6,0.000112534],
  [20949.3,19170.7,0.0370979],
  [20959.1,19169.7,0.0126438],
  [20969.5,19168.8,0.000209808],
  [20979.4,19168.3,0.000368118],
  [20964.1,19197,6.29425],
  [20989.3,19167.6,0.000352859],
  [21016.9,19144.4,-0.0256538],
  [20997.5,19177.9,0.000589371],
  [20997.5,19187.3,0.000732422],
  [20966.1,19237.4,-0.342234],
  [20997.3,19197.5,0.00103378],
  [20997.3,19207.2,0.00107002],
  [20997,19216.7,0.00101662],
  [20912.6,19361.6,-0.00912094],
  [20969.9,19304.3,0.000102997],
  [21004.4,19287,0],
  [21050.3,19296.9,0.0485172],
  [7911.2,16148.6,-0.207474],
  [21069.2,19312.9,-0.0810509],
  [8409.97,18245.3,-0.0607452],
  [8381.48,18256.6,-0.0220947],
  [8361.83,18241.6,-0.129974],
  [8361.58,18248.6,0.0566559],
  [20590.5,20124.1,-0.00276566],
  [20601.8,20131.5,0.134674],
  [20735.3,20109.9,0.0362396],
  [22588.2,16772.8,-0.0366726],
  [22650.1,16857.1,-0.0446491],
  [6860.89,16054.2,0.00328064],
  [6829.23,16050.2,0.00537109],
  [6817.03,16057.8,-0.00833893],
  [8323.73,10076.1,-0.129707],
  [8319.73,10057.5,-0.000366211],
  [8307.56,10052.1,-0.0719299],
  [8311.25,10046.4,-0.0719147],
  [9744.7,22298.3,0.170495],
  [9761.95,22320.4,-0.0493691],
  [9704.02,22320.5,-0.0534749],
  [6209.4,16226.1,0.25],
  [6047.8,16226,0.251583],
  [5548.97,15001.6,1.03701],
  [5502.46,14323.9,0.131226],
  [20756.5,7270.07,-0.31032],
  [20802.5,7299.8,-0.443932],
  [5285.87,14204.5,0.012291],
  [20062.6,6730.71,0.00775146],
  [20088.6,6744.3,-0.00346375],
  [20074.1,6727.71,0.00835419],
  [5240.46,14199.7,-0.000343323],
  [5231.49,14202.1,0.0175819],
  [20097,6725.5,0.0761719],
  [20090.1,6710.67,-0.061615],
  [5213.32,14182.6,0.0616074],
  [20048.9,6630.27,-0.243843],
  [4888.81,14417.9,0.0369358],
  [23439.5,21148.2,-0.106293],
  [23485.1,21095.7,0.0941925],
  [23442.7,21176,-0.125793],
  [23511.1,21174.5,-0.0255508],
  [23517.9,21173.1,-0.0578461],
  [23530.2,21167.7,0.0122452],
  [23625.1,21060,0.0415115],
  [23573.6,21144.8,-0.00180054],
  [23636.1,21078.3,0.0485382],
  [23681.2,21011.4,-0.0619507],
  [23560.7,21204.3,-0.383171],
  [23730.9,21008.2,0.0470963],
  [23715.1,21112.4,-0.035347],
  [4616.19,15477.5,-0.270081],
  [4567.11,15415.8,-0.265381],
  [4190.31,12823.5,3.8147],
  [23003.3,7270.15,-0.0435982],
  [22991.1,7256.46,-0.0337448],
  [23008.7,7273.78,-0.039547],
  [4018.72,12534.4,-0.440639],
  [3898.33,12295.6,-0.0776939],
  [3654.56,13196.9,-0.31782],
  [25272.2,21655.1,0.152168],
  [3268.73,12470.8,-0.043025],
  [25328,21782.9,-0.147018]
];
_military_buildings;
_locations;