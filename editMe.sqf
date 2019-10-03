/**
*  editMe
*
*  Defines all global config for the mission
*
*  Domain: Client, Server
**/

/* Attacker Waves */

// List_Bandits, List_ParaBandits, List_OPFOR, List_INDEP, List_NATO, List_Viper
HOSTILE_LEVEL_1 = List_FIA;  // Wave 0 >
HOSTILE_LEVEL_2 = List_AAF;    // Wave 5 >
HOSTILE_LEVEL_3 = List_LDF;    // Wave 10 >
HOSTILE_ARMED_CARS = List_Armour;//expects vehicles
HOSTILE_ARMOUR = List_ArmedCars; //expects vehicles

HOSTILE_MULTIPLIER = ("HOSTILE_MULTIPLIER" call BIS_fnc_getParamValue);  // How many hostiles per wave (waveCount x HOSTILE_MULTIPLIER)
HOSTILE_TEAM_MULTIPLIER = ("HOSTILE_TEAM_MULTIPLIER" call BIS_fnc_getParamValue) / 100;   // How many extra units are added per player
PISTOL_HOSTILES = ("PISTOL_HOSTILES" call BIS_fnc_getParamValue);  //What wave enemies stop only using pistols

/* LOCATION LIST OPTIONS */
// List_AllCities - for any random City
// List_SpecificPoint - will start the mission on the "Specific Bulwark Pos" marker (move with mission editor). Location must meet BULWARK_LANDRATIO and LOOT_HOUSE_DENSITY, BULWARK_MINSIZE, etc requirements
// List_LocationMarkers - for a location selected randomly from the Bulwark Zones in editor (Currently broken)
// *IMPORTANT* If you get an error using List_SpecificPoint it means that there isn't a building that qualifies. Turning down the "Minimum spawn room size" parameter might help.
BULWARK_LOCATIONS = List_AllCities;

BULWARK_RADIUS = ("BULWARK_RADIUS" call BIS_fnc_getParamValue);
BULWARK_MINSIZE = ("BULWARK_MINSIZE" call BIS_fnc_getParamValue);   // Spawn room must be bigger than x square metres
BULWARK_LANDRATIO = ("BULWARK_LANDRATIO" call BIS_fnc_getParamValue);
LOOT_HOUSE_DENSITY = ("LOOT_HOUSE_DENSITY" call BIS_fnc_getParamValue);

PLAYER_STARTWEAPON = if ("PLAYER_STARTWEAPON" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTMAP    = if ("PLAYER_STARTMAP" call BIS_fnc_getParamValue == 1) then {true} else {false};
PLAYER_STARTNVG    = if ("PLAYER_STARTNVG" call BIS_fnc_getParamValue == 1) then {true} else {false};

/* Respawn */
RESPAWN_TIME = ("RESPAWN_TIME" call BIS_fnc_getParamValue);
RESPAWN_TICKETS = ("RESPAWN_TICKETS" call BIS_fnc_getParamValue);

/* Loot Blacklist */
LOOT_BLACKLIST = [
    "O_Static_Designator_02_weapon_F", // If players find and place CSAT UAVs they count as hostile units and round will not progress
    "O_UAV_06_backpack_F",
    "O_UAV_06_medical_backpack_F",
    "O_UAV_01_backpack_F",
    "B_IR_Grenade",
    "O_IR_Grenade",
    "I_IR_Grenade"
];

/* Whitelist modes */
/* 0 = Off */
/* 1 = Only Whitelist Items will spawn as loot */
/* 2 = Whitelist items get added to existing loot (increases the chance of loot spawning */
LOOT_WHITELIST_MODE = 1;

/* Loot Whitelists */
/* Fill with classname arrays: ["example_item_1", "example_item_2"] */
/* To use Whitelisting there MUST be at least one applicaple item in each LOOT_WHITELIST array*/
LOOT_WHITELIST_WEAPON = [
    "hgun_ACPC2_F",
    "hgun_Pistol_heavy_01_F",
    "hgun_Pistol_heavy_02_F",
    "hgun_PDW2000_F",
    "SMG_01_F",
    "SMG_02_F",
    "SMG_03_TR_black",
    "arifle_TRG21_F",
    "arifle_TRG20_F",
    "arifle_MXC_Black_F",
    "arifle_MX_Black_F",
    "arifle_MX_GL_Black_F",
    "arifle_MX_SW_Black_F",
    "arifle_MXM_Black_F",
    "arifle_Katiba_F",
    "arifle_Katiba_C_F",
    "arifle_Katiba_GL_F",
    "srifle_DMR_01_F",
    "srifle_EBR_F",
    "srifle_GM6_F",
    "srifle_LRR_F",
    "LMG_Mk200_F",
    "LMG_Zafir_F",
    "launch_MRAWS_green_F"
];

LOOT_WHITELIST_APPAREL = [
    "U_B_CTRG_2",
    "U_B_GhillieSuit",
    "U_B_FullGhillie_sard",
    "V_Chestrig_blk",           // No armor
    "V_TacVest_blk",            // Armor L1
    "V_PlateCarrier1_blk",      // Armor L3
    "V_PlateCarrier2_blk",      // Armor L4
    "V_PlateCarrierGL_blk",     // Armor L4 + Explosive Resistance
    "V_PlateCarrierSpec_blk",   // Armor L5
    "H_HelmetB_light_black",
    "H_HelmetB_black",
    "H_HelmetSpecB_blk"
];

LOOT_WHITELIST_ITEM = [
    "NVGoggles_OPFOR",
    "Laserdesignator",
    "FirstAidKit",
    "muzzle_snds_H",
    "muzzle_snds_M",
    "muzzle_snds_B",
    "muzzle_snds_H_MG",
    "muzzle_snds_acp",
    "optic_Arco",
    "optic_Hamr",
    "optic_Holosight",
    "optic_DMS",
    "optic_Nightstalker",
    "bipod_01_F_blk",
    "B_UavTerminal"
];

LOOT_WHITELIST_EXPLOSIVE = [
    "ATMine_Range_Ammo",
    "APERSMine_Range_Ammo",
    "APERSBoundingMine_Range_Ammo",
    "SLAMDirectionalMine_Wire_Ammo",
    "APERSTripMine_Wire_Ammo",
    "ClaymoreDirectionalMine_Remote_Ammo",
    "SatchelCharge_Remote_Ammo",
    "DemoCharge_Remote_Ammo"
];

LOOT_WHITELIST_STORAGE = [
    "B_AssaultPack_rgr",
    "B_FieldPack_green_F",
    "B_Kitbag_rgr",
    "B_Carryall_green_F",
    "B_TacticalPack_oli",
    "B_HMG_01_support_F",
    "B_HMG_01_weapon_F",
    "B_HMG_01_A_weapon_F",
    "B_HMG_01_support_high_F",
    "B_HMG_01_high_weapon_F",
    "B_UAV_01_backpack_F"
];

/* Loot Spawn */
LOOT_WEAPON_POOL    = List_AllWeapons - LOOT_BLACKLIST;    // Classnames of Loot items as an array
LOOT_APPAREL_POOL   = List_AllClothes + List_Vests - LOOT_BLACKLIST;
LOOT_ITEM_POOL      = List_Optics + List_Items - LOOT_BLACKLIST;
LOOT_EXPLOSIVE_POOL = List_Mines + List_Grenades + List_Charges - LOOT_BLACKLIST;
LOOT_STORAGE_POOL   = List_Backpacks - LOOT_BLACKLIST;

/* Random Loot */
LOOT_HOUSE_DISTRIBUTION = ("LOOT_HOUSE_DISTRIBUTION" call BIS_fnc_getParamValue);  // Every *th house will spwan loot.
LOOT_ROOM_DISTRIBUTION = ("LOOT_ROOM_DISTRIBUTION" call BIS_fnc_getParamValue);   // Every *th position, within that house will spawn loot.
LOOT_DISTRIBUTION_OFFSET = 0; // Offset the position by this number.
LOOT_SUPPLYDROP = ("LOOT_SUPPLYDROP" call BIS_fnc_getParamValue) / 100;        // Radius of supply drop
PARATROOP_COUNT = ("PARATROOP_COUNT" call BIS_fnc_getParamValue);
PARATROOP_CLASS = List_NATO;
DEFECTOR_CLASS = List_NATO;

/* Points */
SCORE_KILL = ("SCORE_KILL" call BIS_fnc_getParamValue);                 // Base Points for a kill
SCORE_HIT = ("SCORE_HIT" call BIS_fnc_getParamValue);                   // Every Bullet hit that doesn't result in a kill
SCORE_DAMAGE_BASE = ("SCORE_DAMAGE_BASE" call BIS_fnc_getParamValue);   // Extra points awarded for damage. 100% = SCORE_DAMAGE_BASE. 50% = SCORE_DAMAGE_BASE/2
SCORE_RANDOMBOX = 950;  // Cost to spin the box

/*Point multipliers of SCORE_KILL for different waves */
HOSTILE_LEVEL_1_POINT_SCORE = 0.75;
HOSTILE_LEVEL_2_POINT_SCORE = 1;
HOSTILE_LEVEL_3_POINT_SCORE = 1.50;
HOSTILE_CAR_POINT_SCORE = 2;
HOSTILE_ARMOUR_POINT_SCORE = 4;

/* Comment out or delete the below support items to prevent the player from buying them */

BULWARK_SUPPORTITEMS = [
    [800,  "Recon UAV",             "reconUAV"],
    [1680, "Emergency Teleport",   "telePlode"],
    [1950, "Paratroopers",          "paraDrop"],
    [3850, "Missile CAS",          "airStrike"],
    [4220, "Mine Cluster Shell",   "mineField"],
    [4690, "Rage Stimpack",         "ragePack"],
    [5930, "Mind Control Gas",    "mindConGas"],
    [6666, "ARMAKART TM",           "armaKart"],
    [7500, "Predator Drone",    "droneControl"]
];

/* Objects the Player can buy */

/* Radius prevents hostiles walking through objects */

/*  Price - Display Name - Class Name - Rotation When Bought - Object Radius (meters) *prevents AI glitching through object and triggers suicide bombers*/
BULWARK_BUILDITEMS = [
    [1,    "Coffee Table",         "Land_TableSmall_01_F",                  0,      1],
    [5,    "Burning Barrel",       "MetalBarrel_burning_F",                 0,      1],
    [25,   "Vehicle Caltrop",      "Land_ConcreteHedgehog_01_F",            0,      1],
    [50,   "Short Sandbag Wall",   "Land_BagFence_Short_F",                 0,      1],
    [75,   "Long Sandbag Wall",    "Land_BagFence_Long_F",                  0,      1],
    [100,  "Curved Sandbag Wall",  "Land_BagFence_Round_F",                 0,      1],
    [150,  "Window Barricade",     "Land_Shoot_House_Wall_Stand_F",         0,      1],
    [200,  "Sandbag Barricade",    "Land_SandbagBarricade_01_half_F",       0,      1],
    [250,  "Full Sandbag Wall",    "Land_SandbagBarricade_01_F",            0,      1],
    [300,  "Windowed Sandbag Wall",    "Land_SandbagBarricade_01_hole_F",   0,      3],
    [500,  "Short H Barrier Wall", "Land_HBarrier_3_F",                     0,      2],
    [500,  "Portable Lights",      "Land_PortableLight_double_F",           180,     1],
    [750,  "Dragon's Teeth",       "Land_DragonsTeeth_01_4x2_new_redwhite_F",    0,      4],
    [800,  "Storage box small",    "Bot_T_NATO_Wps_Special_F",              0,      1],
    [1000, "H Barrier Wall",       "Land_HBarrierWall4_F",                  0,      4],
    [1200, "Storage box large",    "B_CargoNet_01_ammo_F",                  0,      1],
    [1250, "H Barrier Corner",     "Land_HBarrier_Wall_corner_F",           0,      3.5],
    [2000, "Sandbag Bunker",       "Land_BagBunker_Small_F",                0,      1],
    [2500, "Static HMG (Low)",     "B_HMG_01_F",                            0,      1],
    [3000, "Static HMG",           "B_HMG_01_high_F",                       0,      1],
    [4500, "H Barrier Bunker",     "Land_HBarrierTower_F",                  90,    3],
    [4500, "Pillbox",              "Land_PillboxBunker_01_hex_F",           90,     2.5],
    [6000, "Guard Tower",          "Land_Cargo_Patrol_V3_F",                0,      3.5],
    [7500, "Static HMG (Auto)",    "B_HMG_01_A_F",                          180,    3.5]
];

/* Time of Day*/
DAY_TIME_FROM = ("DAY_TIME_FROM" call BIS_fnc_getParamValue);
DAY_TIME_TO = ("DAY_TIME_TO" call BIS_fnc_getParamValue);

// Check for sneaky inverted configuration. FROM should always be before TO.
if (DAY_TIME_FROM > DAY_TIME_TO) then {
    DAY_TIME_FROM = DAY_TIME_TO - 2;
};

/* Starter MediKits */
BULWARK_MEDIKITS = ("BULWARK_MEDIKIT" call BIS_fnc_getParamValue);
