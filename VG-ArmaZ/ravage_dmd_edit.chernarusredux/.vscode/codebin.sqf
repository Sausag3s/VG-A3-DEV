// temp file, very shy. pls ignore. 

[(getPos player), [10,20], [4,6], [20,30], true] call dmd_fnc_lootCrate;        // debug crate

// god mode and inf ammo for debug
(vehicle player) allowDamage false;
(vehicle player) addEventHandler ["Fired", { (_this select 0) setVehicleAmmo 1 }];

// kill all enemy ai for mission complete debugging
{ if (side _x == east) then { _x setdamage 1.0; }; } foreach allunits;


// uniforms
"U_B_CombatUniform_mcam_tshirt",
"U_B_CTRG_3",
"U_B_CTRG_2",
"U_B_FullGhillie_ard",
"U_B_FullGhillie_lsh",
"U_B_FullGhillie_sard",
"U_B_GhillieSuit",
"U_BG_Guerrilla_6_1",
"U_BG_Guerilla1_1",
"U_BG_Guerilla2_1",
"U_BG_Guerilla2_3",
"rhs_uniform_FROG01_wd",
"rhs_uniform_g3_aor2",
"rhs_uniform_g3_blk",
"rhs_uniform_g3_m81",
"rvg_bandit",
"rvg_bandit_1",
"rvg_camo_1",
"rvg_hoodie_bandit",
"rvg_hoodie_blue",
"rvg_hoodie_grey",
"rvg_hoodie_kabeiroi",
"rvg_hoodie_red",
"rvg_paramilitary_1",
"rvg_retro_bandit",
"rvg_retro_green",
"rvg_retro_grey",
"rvg_retro_kabeiroi",
"rvg_retro_red",
"rvg_shirt_bandit",
"rvg_shirt_check",
"rvg_shirt_kabeiroi",
"rvg_shirt_stripe",
"rvg_survivor",
"rvg_survivor_1",
"U_B_Wetsuit_rvg",
"rhsgref_uniform_gorka_1_f",
"rhsgref_uniform_olive",
"CUP_U_I_GUE_Anorak_01",
"CUP_U_I_GUE_Anorak_03",
"CUP_U_I_GUE_Anorak_02",
"CUP_U_O_CHDKZ_Lopotev",
"CUP_U_B_CZ_WDL_TShirt",
"CUP_U_B_BAF_DPM_GHILLIE",
"CUP_U_I_GUE_Flecktarn2",
"CUP_I_B_PMC_Unit_20",
"CUP_I_B_PMC_Unit_7",
"CUP_I_B_PMC_Unit_24",
"CUP_I_B_PMC_Unit_23",
"CUP_I_B_PMC_Unit_29",
"CUP_U_O_RUS_Gorka_Green",
"CUP_U_C_Suit_01",
"CUP_U_C_Woodlander_04",

// how wasteland does lock actions for objects 
if ({_objet isKindOf _x} count R3F_LOG_CFG_objets_deplacables > 0) then
{
	_objet addAction [("<img image='client\icons\r3f_lift.paa' color='#ffff00'/> <t color='#ffff00'>" + STR_R3F_LOG_action_deplacer_objet + "</t>"), "addons\R3F_ARTY_AND_LOG\R3F_LOG\objet_deplacable\deplacer.sqf", nil, 5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && !(_target getVariable ['objectLocked', false])"];
	_objet addAction [("<img image='client\icons\r3f_lock.paa' color='#ff0000'/> <t color='#ff0000'>" + STR_LOCK_OBJECT + "</t>"), "addons\R3F_ARTY_AND_LOG\R3F_LOG\objet_deplacable\objectLockStateMachine.sqf", _doLock, -5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && Object_canLock && (!(_target isKindOf 'AllVehicles') || {_target isKindOf 'StaticWeapon'})"];
	_objet addAction [("<img image='client\icons\r3f_unlock.paa' color='#06ef00'/> <t color='#06ef00'>" + STR_UNLOCK_OBJECT + "</t>"), "addons\R3F_ARTY_AND_LOG\R3F_LOG\objet_deplacable\objectLockStateMachine.sqf", _doUnlock, -5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && !Object_canLock"];
};