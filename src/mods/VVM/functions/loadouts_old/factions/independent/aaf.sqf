// F3 - Folk ARPS Assign Gear Script - NATO
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ================================
// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES
// ATTACHMENTS - PRIMARY

// ================================
// EASY BOOLEANS
// A set of toggles for standard changes
// ================================

_stealth_bool = False;
_gpsBool = False;
_nvgBool = False;
_flashBool = False;

// ================================
// ATTACHMENTS
// ================================
_scope_frontline = ["optic_MRCO", "optic_ACO", "optic_Holosight_blk_F"]; // Standard choice for infantry - give them the chance for med range.
_scope_support = ["optic_ACO", "optic_Holosight_blk_F"]; // Support infantry don't get extra options
_scope_dm = ["optic_DMS", "optic_MRCO"]; // Designated Marksman Night
_scope_sniper = ["optic_LRPS"]; // Sniper

_attachSide = ["acc_pointer_IR","acc_flashlight"];
if (_flashBool) then {
	_attachSide = ["acc_flashlight"];
};

_flashHider = "";
_silencerStd = "muzzle_snds_F"; // 6.5 silencer (black)
_silencerAr = "muzzle_snds_B"; // 6.5 silencer (black)
_silencerDm = "muzzle_snds_B"; // 6.5 silencer (black)

_bipod1 = ["bipod_03_F_blk"];

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";
_hg_scope1 = "";

// Default setup
_attachments = [_attachSide, _scope_frontline]; // The default attachment set for most units, overwritten in the individual unitType

// Predefined Class Attachment Setup
_attach_mg = [_attachSide, _scope_frontline, _bipod1]; // MMG
_attach_ar = [_attachSide, _scope_frontline];	// Autorifle
_attach_dm = [_attachSide, _scope_dm, _bipod1];		// Designated Marksman
_attach_sp = [_attachSide, _scope_support];			// "Support" Roles
_attach_sn = [_scope_sniper, _bipod1];				// Snipers

_attach_recon = [_attachSide, _scope_frontline, _silencer1];
_attach_recon_dm = [_attachSide, _scope_dm, _bipod1, _silencerdm];
_attach_none = [];

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType


// ================================
// WEAPONS
// ================================

// Basic magazine counts given to most infantry, MMG etc get _defMags_tr as default count.
_defMags = 6;
_defMags_tr = 2;

// Standard-Issue Pistol (All Units)
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";

// Standard-issue Rifle (All front-line roles)
_rifle = ["arifle_Mk20_F"];
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard-issue Carbine (All support roles)
_carbine = ["arifle_Mk20C_F"];
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = ["arifle_Mk20_GL_F"];
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmoke = "1Rnd_Smoke_Grenade_shell";
_glsmokealt1 = "1Rnd_SmokeYellow_Grenade_shell";
_glsmokealt2 = "1Rnd_SmokePurple_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflare = "UGL_FlareWhite_F";
_glflarealt = "UGL_FlareYellow_F";
_glflarealt2 = "UGL_FlareGreen_F";
_glflarealt3 = "UGL_FlareRed_F";

// Automatic Rifleman
_AR = "LMG_Mk200_F";
_ARmag = "200Rnd_65x39_cased_Box";
_ARmag_tr = "200Rnd_65x39_cased_Box_Tracer";

// Medium MG
_MMG = "MMG_01_hex_F";
_MMGmag = "150Rnd_93x64_Mag";
_MMGmag_tr = "150Rnd_93x64_Mag";

// Marksman rifle
_DMrifle = "srifle_EBR_F";
_DMriflemag = "20Rnd_762x51_Mag";
_DMriflemag_tr = "20Rnd_762x51_Mag";

// Rifleman AT
_RAT = "launch_NLAW_F";
_RATmag = "NLAW_F";
_RATmag2 = "NLAW_F";

// Medium AT
_MAT = "launch_O_Vorona_brown_F";
_MATmag1 = "Vorona_HEAT";
_MATmag2 = "Vorona_HE";

// Surface Air
_SAM = "launch_O_Titan_F";
_SAMmag = "Titan_AA";

// Heavy AT
_HAT = "launch_O_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = ["srifle_GM6_camo_F"];
_SNrifleMag = "5Rnd_127x108_Mag";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag_SMG_02";
_smgmag_tr = "30Rnd_9x21_Mag_SMG_02_Tracer_Green";


// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag_green";
_diverMag2 = "20Rnd_556x45_UW_mag";

// ================================
// EQUIPMENT
// ================================

// Grenades
_grenade = "HandGrenade";
_grenadealt = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadealt = "SmokeShellYellow";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Binoculars
_binos1 = "Binocular";
_binos2 = "Rangefinder";
_binos3 = "Laserdesignator_02";

// Night Vision Goggles (NVGoggles)
_nvg = "O_NVGoggles_hex_F";

// UAV Terminal
_uavterminal = "O_UavTerminal";	  // BLUFOR - FIA

// Chemlights
_chem =  "Chemlight_yellow";
_chemalt = "Chemlight_red";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ================================
// BACKBACKS
// ================================

// Infantry
_bagsmall 	= 		["B_AssaultPack_dgtl"];
_bagmedium 	= 		["B_FieldPack_oli"];
_bagday 	=		["B_Kitbag_rgr"];
_baglarge 	=  		["B_Carryall_oli"];

// Diver
_bagmediumdiver =  	"B_AssaultPack_blk";				// used by divers

// UAV
_baguav = 			"I_UAV_03_backpack_F";				// used by UAV operator
_bagMedUav = 		"I_UAV_06_medical_backpack_F";		// used by Medical UAV operator
_bagUtilUav = 		"I_UAV_06_backpack_F";				// used by Logistics UAV operator

// Remote Designator
// _bagremote = 		[]; 	// Used by Forward Observer (AAF don't have one)

// Support
_baghmgg 	= 	"I_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag 	= 	"I_HMG_01_support_F";				// used by Heavy MG assistant gunner
_baghatg 	= 	"I_AT_01_weapon_F";					// used by Heavy AT gunner
_baghatag 	= 	"I_HMG_01_support_F";				// used by Heavy AT assistant gunner
_bagmtrg 	= 	"I_Mortar_01_weapon_F";				// used by Mortar gunner
_bagmtrag 	= 	"I_Mortar_01_support_F";			// used by Mortar assistant gunner
_baghsamg 	= 	"I_AA_01_weapon_F";					// used by Heavy SAM gunner
_baghsamag 	= 	"I_HMG_01_support_F";				// used by Heavy SAM assistant gunner

// ================================
// FACE, CLOTHES AND UNIFORMS
// ================================

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform
// FACE, CLOTHES AND UNIFORMS
_vlight = ["mtrag", "mtrg", "hsamag", "hsamg", "msamag", "mmgag", "matag", "log"];
_light = ["co", "dc", "jtac", "fo", "leng", "mmgg", "matg", "uav", "msamg", "eng", "ugv", "uavm", "uavl"];
_heavy =  ["gren"];
_special = ["plm", "m", "ugv"];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit
_baseUniform = ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"];
_baseHelmet = ["H_HelmetIA"];
_baseGlasses = ["", "G_Combat", "G_LowProfile", "G_Tactical_Clear", "G_Shades_Black", "G_Sport_Blackred", "G_Shades_Red", "G_Shades_Blue", "G_Shades_Green", "G_Tactical_Black"];

// Vests
_vlightRig = "V_Chestrig_oli";
_lightRig = "V_PlateCarrierIA1_dgtl";
_mediumRig = "V_PlateCarrierIA2_dgtl"; 	// default for all infantry classes
_heavyRig = "V_PlateCarrierIA2_dgtl";
_specialRig = "V_PlateCarrierIAGL_dgt";

// Lighter / Support Objects
_lightHelmet = ["H_HelmetIA"];
_lightUniform = ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"];

// Crewman
_crew = ["vc","vg","vd"];

_crewUniform = ["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve"];
_crewHelmet = ["H_HelmetCrew_O"];
_crewRig = ["V_BandollierB_cbr"];
_crewGlasses = [];

// Diver
_diver = ["dtl", "div", "dexp", "divm"];

_diverUniform =  "U_O_Wetsuit";
_diverHelmet = [];
_diverRig = "V_RebreatherIA";
_diverGlasses = [];

// Heli
_heli = ["hp", "hc"];

_heliUniform = "U_I_HeliPilotCoveralls";
_heliHelmet = "H_PilotHelmetHeli_I";
_heliCrewHelmet = "H_CrewHelmetHeli_I";
_heliRig = "V_TacChestrig_rgr_F";
_heliGlasses = [];

// Pilot
_pilot = ["p"];

_pilotUniform = "U_I_pilotCoveralls";
_pilotHelmet = "H_PilotHelmetFighter_I";
_pilotRig = [];
_pilotGlasses = [];

// Ghillie
_ghillie = ["sn","sp"];

_ghillieUniform = ["U_I_GhillieSuit"];
_ghillieHelmet = ["H_HelmetB_camo"];
_ghillieRig = ["V_Chestrig_oli"];
_ghillieGlasses = ["G_Bandanna_olir"];

// Recon
_specOp = ["rsl", "rm", "rgren", "rrat", "rsc", "rdm"];

_sfuniform = _lightUniform;
_sfhelmet = ["H_HelmetIA"];
_sfRig = _vlightReg;
_sfGlasses = [""];

// MARSOC

// ================================

// This block needs only to be run on an infantry unit
if (_isMan) then {
	// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks
	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// Add Toolequipment
	_unit linkItem "ItemMap";		// Add and equip the map
	_unit linkItem "ItemCompass";	// Add and equip a compass
	_unit linkItem "ItemRadio";		// Add and equip A3's default radio
	_unit linkItem "ItemWatch";		// Add and equip a watch
	
	if (_gpsBool) then {
		_unit linkItem "ItemGPS"; 		// Add and equip a GPS
	};
	
	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.
	#include "..\..\f\assignGear\f_assignGear_clothes.sqf";

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	if (_nvgBool) then {
		_unit linkItem _nvg;			// Add and equip the faction's nvg
	};
	
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	_unit addItem _firstaid;		// Add a single first aid kit (FAK)
	
};

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeOfBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeOfBackPack) do
	{
		#include "f_backpack.sqf";
	};
};



// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)
#include "unit_definitions.sqf";

// Handle weapon attachments
#include "..\..\f\assignGear\f_assignGear_attachments.sqf";

// AAF DIGI KITBAG
if (backpack _unit == "B_Kitbag_rgr") then {
	(backpackContainer _unit) setObjectTextureGlobal [0,"A3\weapons_f\ammoboxes\bags\data\backpack_fast_digi_co.paa"];  
};

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectWeapon primaryWeapon _unit;