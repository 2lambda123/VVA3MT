/* Name: NATO.sqf
 * Description: Faction Definition for NATO.
 * Authors: vigil.vindex@gmail.com
 * License: https://creativecommons.org/licenses/by-sa/4.0/
 * Created: 2020/07/22 Updated: 2020/07/22 Version: 0.0.1
 * Dependencies: VVM_fnc_parseRole
 * Returns:
 *   ROLE ARRAY [ROLE,TRAITS,VOICE,FACE,UNIFORM,HEADGEAR,BACKPACK,VEST,NVG,FACEWEAR,BINOCULAR,TERMINAL,[PRIMARY],[SECONDARY],[LAUNCHER],MEDICAL,CHEMLIGHTS,SMOKES,GRENADES,EXPLOSIVES,MINES,COMPASS,MAP,WATCH,RADIO,TOOLS]
 *   WEAPON ARRAYS [KEY,VARIANT,[MAGAZINES],[TRACERS],[SMOKES],[FLARES],[GRENADES],[ACCESSORIES],[BIPODS],[MUZZLES],[OPTICS]]
 *   MAGAZINE & ITEM ARRAYS [[TYPE,COUNT]]
 * Arguments: index name     (default) TYPE    {Required} min,max    "values"
 *            d     debug    (false)   BOOLEAN {N}        false,true "Disabled","Enabled"
 *            r     role 	 (0)       SCALAR  {N}        0,36       "Role Key"
 * Usage: _co = [] call compile preprocessFileLineNumbers "NATO.sqf";
 * Developer Notes:
 * 	Faction role definition array uses "-1" to indicate to the set loadout function skip that element.
 * 	Voice and face are selected randomly, and only applied to AI via a switch in the set loadout function.
 * TODO: Switches for climate, stealth, day or night gear.
 */
if (isNil "_this") exitWith {["%1 Function called without arguments.",time] call BIS_fnc_error;false;};
if !(_this isEqualType []) exitWith {["%1 Function called without arguments array.",time] call BIS_fnc_error;false;};
private ["_key","_side","_year","_classname","_content","_climates","_camo","_roles","_primaries","_secondaries","_launchers","_voices","_faces","_uniforms","_headgear","_backpacks","_vests","_rolekeys","_role","_return"];
_key = "NATO"; // FACTION KEY https://armedassault.fandom.com/wiki/NATO
_side = WEST; // FACTION SIDE
_year = 2035; // FACTION YEAR
_classname = "BLU_F"; // FACTION CLASSNAME
_content = ["Vanilla","Tanoa","Mark","GM"]; // FACTION CONTENT = Vanilla; DLC: TANOA,TANKS,MARKS,GM; MODS: CUP,RHS,BAF,IFA3,GEIST;
_climates = [0,1,2]; // "Arid","Urban","Lush": _environment selectRandom _environments; _uniform + _environment;
_camo = ["MTP","Tropic","Woodland"];
_voice = floor random 12;
_face = floor random 20;
_roles = [ // FACTION ROLES: INDEX ROLE TRAITS VOICE FACE UNIFORM HEADGEAR BACKPACK VEST NVG FACEWEAR BINOCULAR TERMINAL PRIMARY													SECONDARY												LAUNCHER									MEDICAL 		CHEMLIGHTS 					SMOKES 					   GRENADES 	  EXPLOSIVES 	 MINES 						COMPASS MAP WATCH RADIO TOOLS
/*0*/	["co",		0,	_voice,	_face,	0,	0,	0,	0,	-1,	-1,	1,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]], -1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*1*/	["sl",		0,	_voice,	_face,	0,	1,	3,	0,	-1,	-1,	1,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*2*/	["ftl",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	1,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*3*/	["med",		1,	_voice,	_face,	0,	2,	7,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,10],[1,1]],	[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*4*/	["eng",		2,	_voice,	_face,	0,	2,	7,	9,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],[[1,1]]],
/*5*/	["engm",	3,	_voice,	_face,	0,	2,	7,	9,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 [[0,1],[1,1],[2,1],[3,1],[4,1],[5,1]],	0,0,0,[[0,1]],[[0,1],[1,1]]],
/*6*/	["eod",		4,	_voice,	_face,	0,	2,	7,	9,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], [[0,2],[1,1]], -1,									0,0,0,[[0,1]],[[0,1]]],
/*7*/	["uav",		5,	_voice,	_face,	0,	2,	21,	0,	-1,	-1,	0,	1,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*8*/	["r",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*9*/	["rat",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		[[0,0,[[0,2]],-1,-1,-1,-1,-1,-1,-1]],		[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*10*/	["ar",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*11*/	["aar",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]],[1,-1,[[1,5]],-1,-1,-1,-1,-1,-1,-1,-1]],	[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*12*/	["mat",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		[[0,0,[[0,2],[1,2]],-1,-1,-1,-1,-1,-1,-1]],	[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*13*/	["mata",	0,	_voice,	_face,	0,	2,	7,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		[[0,-1,[[0,2],[1,2]],-1,-1,-1,-1,-1,-1,-1]],[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*14*/	["hat",		0,	_voice,	_face,	0,	2,	20,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		[[0,0,[[0,2],[1,2]],-1,-1,-1,-1,-1,-1,-1]],	[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*15*/	["hata",	0,	_voice,	_face,	0,	2,	9,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		[[0,-1,[[0,2],[1,2]],-1,-1,-1,-1,-1,-1,-1]],[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*16*/	["mmg",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*17*/	["mmga",	0,	_voice,	_face,	0,	2,	7,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*18*/	["hmg",		0,	_voice,	_face,	0,	2,	11,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*19*/	["hmga",	0,	_voice,	_face,	0,	2,	9,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*20*/	["msam",	0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*21*/	["msama",	0,	_voice,	_face,	0,	2,	7,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*22*/	["hsam",	0,	_voice,	_face,	0,	2,	19,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*23*/	["hsama",	0,	_voice,	_face,	0,	2,	9,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*24*/	["mrt",		0,	_voice,	_face,	0,	2,	17,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*25*/	["mrta",	0,	_voice,	_face,	0,	2,	18,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*26*/	["gre",		0,	_voice,	_face,	0,	2,	3,	9,	-1,	-1,	0,	0,	[[1,4,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*27*/	["dm",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	1,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*28*/	["sn",		0,	_voice,	_face,	9,	6,	3,	0,	-1,	-1,	1,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*29*/	["sp",		0,	_voice,	_face,	6,	6,	3,	0,	-1,	-1,	1,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*30*/	["div",		0,	_voice,	_face,	17,	-1,	0,	12,	-1,	0,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*31*/	["vc",		0,	_voice,	_face,	0,	2,	0,	-1,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*32*/	["vd",		0,	_voice,	_face,	0,	2,	0,	-1,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*33*/	["vg",		0,	_voice,	_face,	0,	2,	0,	-1,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*34*/	["p",		0,	_voice,	_face,	16,	27,	23,	-1,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[1,0,[[0,2]],-1,-1,-1,-1,[[0,1]],-1,[[0,1]],[[0,1]]]],	-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*35*/	["car",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,7,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1],
/*36*/	["smg",		0,	_voice,	_face,	0,	2,	3,	0,	-1,	-1,	0,	0,	[[1,1,[[1,5]],[[1,5]],-1,-1,-1,[[0,1]],[[1,1]],[[1,1]],[[2,1]]]],											[[0,0,[[0,2]],[[0,0]],-1,-1,-1,-1,-1,[[0,1]],-1]],		-1,											[[0,1]],		[[0,1],[1,1],[2,1],[3,1]],	[[0,2],[1,2],[2,2],[4,2]], [[0,2],[1,2]], -1,			 -1,									0,0,0,[[0,1]],-1]
];
_primaries = [	// FACTION PRIMARY WEAPONS
	"VERMIN",	// 0 SMG
	"MX",		// 1 AR
	"SPAR16",	// 2 AR
	"MXSW",		// 3 LSW
	"SPAR16S",	// 4 LSW
	"SPMG",		// 5 HMG
	"MXM",		// 6 DMR
	"SPAR17",	// 7 DMR
	"MK1",		// 8 DMR
	"MK14",		// 9 DMR
	"M320",		// 10 DMR
	"MAR10",	// 11 DMR
	"SDAR"		// 12 AR
];
_secondaries = [	// FACTION SECONDARY WEAPONS
	"PO7",			// 0
	"4FIVE"			// 1
];
_launchers = [	// FACTION LAUNCHER WEAPONS
	"TITAN",	// 0 AA
	"MAAWS",	// 1 AT
	"PCML",		// 2 AT
	"TITANC"	// 3 AT
];
_voices = [			// FACTION VOICES
	"Male01ENG",	// 0
	"Male02ENG",	// 1
	"Male03ENG",	// 2
	"Male04ENG",	// 3
	"Male05ENG",	// 4
	"Male06ENG",	// 5
	"Male07ENG",	// 6
	"Male08ENG",	// 7
	"Male09ENG",	// 8
	"Male10ENG",	// 9
	"Male11ENG",	// 10
	"Male12ENG"		// 11
];
_faces = [			// FACTION FACES
	"WhiteHead_01", // 0
	"WhiteHead_02", // 1
	"WhiteHead_03", // 2
	"WhiteHead_04", // 3
	"WhiteHead_05", // 4
	"WhiteHead_06", // 5
	"WhiteHead_07", // 6
	"WhiteHead_08", // 7
	"WhiteHead_09", // 8
	"WhiteHead_10", // 9
	"WhiteHead_11", // 10
	"WhiteHead_12", // 11
	"WhiteHead_13", // 12
	"WhiteHead_14", // 13
	"WhiteHead_15", // 14
	"WhiteHead_16", // 15
	"WhiteHead_17", // 16
	"WhiteHead_19", // 17
	"WhiteHead_20", // 18
	"WhiteHead_21"	// 19
];
_uniforms = [								// FACTION UNIFORMS
	"U_B_CombatUniform_mcam",				// 0 Combat Fatigues MTP
	"U_B_T_Soldier_F",						// 1 Combat Fatigues Tropic
	"U_B_CombatUniform_mcam_wdl_f",			// 2 Combat Fatigues MTP Woodland
	"U_B_CombatUniform_mcam_tshirt",		// 3 Combat Fatigues Tee MTP
	"U_B_T_Soldier_AR_F",					// 4 Combat Fatigues Tee Tropic
	"U_B_CombatUniform_tshirt_mcam_wdL_f",	// 5 Combat Fatigues Tee MTP Woodland
	"U_B_CombatUniform_mcam_vest",			// 6 Recon Fatigues MTP
	"U_B_T_Soldier_SL_F",					// 7 Recon Fatigues Tropic
	"U_B_CombatUniform_vest_mcam_wdl_f",	// 8 Recon Fatigues MTP Woodland
	"U_B_GhillieSuit",						// 9 Guillie Suit
	"U_B_T_Sniper_F",						// 10 Tropic Guillie Suit
	"U_B_FullGhillie_ard",					// 11 Full Gillie Arid
	"U_B_FullGhillie_lsh",					// 12 Full Gillie Lush
	"U_B_FullGhillie_sard",					// 13 Full Gillie Semi-Arid
	"U_B_T_FullGhillie_tna_F",				// 14 Full Gillie Jungle
	"U_B_HeliPilotCoveralls",				// 15 Heli Pilot
	"U_B_PilotCoveralls",					// 16 Pilot
	"U_B_Wetsuit",							// 17 Wetsuit
	"U_B_CBRN_Suit_01_MTP_F",				// 18 CBRN Suit MTP
	"U_B_CBRN_Suit_01_Tropic_F",			// 19 CBRN Suit Tropic
	"U_B_CBRN_Suit_01_Wdl_F"				// 20 CBRN Suit MTP Woodland
];
_headgear = [						// FACTION HEADGEAR
	"H_Beret_Colonel",				// 0 Beret CO
	"H_Beret_02",					// 1 Beret SL
	"H_HelmetB_light_desert",		// 2 Light Combat Helmet Desert
	"H_HelmetB_Light_tna_F",		// 3 Light Combat Helmet Tropic
	"H_HelmetB_light_wdl",			// 4 Light Combat Helmet Woodland
	"H_HelmetB_light_black",		// 5 Light Combat Helmet Black
	"H_HelmetB_light_grass",		// 6 Light Combat Helmet Grass
	"H_HelmetB_light_sand",			// 7 Light Combat Helmet Sand
	"H_HelmetB_light_snakeskin",	// 8 Light Combat Helmet Snakeskin
	"H_HelmetB_light",				// 9 Light Combat Helmet
	"H_HelmetB_desert",				// 10 Combat Helmet Desert
	"H_HelmetB_tna_F",				// 11 Combat Helmet Tropic
	"H_HelmetB_plain_wdl",			// 12 Combat Helmet Woodland
	"H_HelmetB_black",				// 13 Combat Helmet Black
	"H_HelmetB_grass",				// 14 Combat Helmet Grass
	"H_HelmetB_sand",				// 15 Combat Helmet Sand
	"H_HelmetB_snakeskin",			// 16 Combat Helmet Snakeskin
	"H_HelmetB",					// 17 Combat Helmet 
	"H_HelmetSpecB_paint2",			// 18 Enhanced Combat Helmet Desert
	"H_HelmetB_Enh_tna_F",			// 19 Enhanced Combat Helmet Tropic
	"H_HelmetSpecB_wdl",			// 20 Enhanced Combat Helmet Woodland
	"H_HelmetSpecB_blk",			// 21 Enhanced Combat Helmet Black
	"H_HelmetSpecB_paint1",			// 22 Enhanced Combat Helmet Grass
	"H_HelmetSpecB_sand",			// 23 Enhanced Combat Helmet Sand
	"H_HelmetSpecB_snakeskin",		// 24 Enhanced Combat Helmet Snakeskin
	"H_HelmetSpecB",				// 25 Enhanced Combat Helmet 
	"H_HelmetCrew_B",				// 26 Crew Helmet
	"H_CrewHelmetHeli_B",			// 27 Heli Crew Helmet
	"H_PilotHelmetHeli_B",			// 28 Heli Pilot Helmet
	"H_PilotHelmetFighter_B",		// 29 Fighter Pilot Helmet
	"H_MilCap_mcamo",				// 30 Military Cap MTP
	"H_MilCap_tna_F",				// 31 Military Cap Tropic
	"H_MilCap_wdl",					// 32 Military Cap Woodland
	"H_Bandanna_mcamo",				// 33 Bandana MTP
	"H_Booniehat_mcamo",			// 34 Booniehat MTP
	"H_Cap_tan_specops_US"			// 35 Cap MTP
];
_backpacks = [					// FACTION BACKPACKS
	"B_AssaultPack_mcamo",		// 0 Assault Pack MTP
	"B_AssaultPack_tna_F",		// 1 Assault Pack Tropic
	"B_AssaultPack_wdl_F",		// 2 Assault Pack Woodland
	"B_Kitbag_mcamo",			// 3 Kitbag MTP
	"B_Kitbag_rgr",				// 4 Kitbag Green
	"B_TacticalPack_mcamo",		// 5 Tactical Pack MTP
	"B_TacticalPack_rgr",		// 6 Tactical Pack Green
	"B_Carryall_mcamo",			// 7 Carryall MTP
	"B_Carryall_oli",			// 8 Carryall Olive
	"B_HMG_01_support_F",		// 9 Tripod
	"B_HMG_01_support_high_F",	// 10 Tripod Raised
	"B_HMG_01_weapon_F",		// 11 HMG
	"B_HMG_01_high_weapon_F",	// 12 HMG Raised
	"B_HMG_01_A_weapon_F",		// 13 HMG Auto
	"B_GMG_01_weapon_F",		// 14 GMG
	"B_GMG_01_high_weapon_F",	// 15 GMG Raised
	"B_GMG_01_A_weapon_F",		// 16 GMG Auto
	"B_Mortar_01_weapon_F",		// 17 Tube
	"B_Mortar_01_support_F",	// 18 Bipod
	"B_AA_01_weapon_F",			// 19 AA
	"B_AT_01_weapon_F",			// 20 AT
	"B_UAV_01_backpack_F",		// 21 UAV AR2
	"B_UAV_06_backpack_F",		// 22 UAV AL6
	"B_B_Parachute_02_F"		// 23
];
_vests = [						// FACTION VESTS
	"V_PlateCarrier1_rgr",		// 0 Lite Green
	"V_PlateCarrier1_tna_F",	// 1 Lite Tropic
	"V_PlateCarrier1_wdl",		// 2 Lite Woodland
	"V_PlateCarrier2_rgr",		// 3 Rig Green
	"V_PlateCarrier2_tna_F",	// 4 Rig Tropic
	"V_PlateCarrier2_wdl",		// 5 Rig Woodland
	"V_PlateCarrierSpec_mtp",	// 6 Special MTP
	"V_PlateCarrierSpec_tna_F",	// 7 Special Tropic
	"V_PlateCarrierSpec_wdl",	// 8 Special Woodland
	"V_PlateCarrierGL_mtp",		// 9 GL MTP
	"V_PlateCarrierGL_tna_F",	// 10 GL Tropic
	"V_PlateCarrierGL_wdl",		// 11 GL Woodland
	"V_RebreatherB"				// 12
];
_role = _roles select _this; // SELECT FACTION ROLE
_return = [_role,_primaries,_secondaries,_launchers,_voices,_faces,_uniforms,_headgear,_backpacks,_vests] call VVM_fnc_parseRole; // Parse Role Array.
{_x = nil} forEach [_key,_side,_year,_classname,_content,_climates,_camo,_roles,_primaries,_secondaries,_launchers,_voices,_faces,_uniforms,_headgear,_backpacks,_vests,_role];
_return;