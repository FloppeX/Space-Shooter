var i = irandom(16)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_damage_bonus,2,"Damage +2",noone,noone); break;
		case 1: scr_add_modifier_new(scr_module_modifier_damage_multiplier,0.2,"Damage +20%",noone,noone); break;
		case 2: scr_add_modifier_new(scr_module_modifier_range_bonus,200,"Range +200",noone,noone); break;
		case 3: scr_add_modifier_new(scr_module_modifier_range_multiplier,0.2,"Range +20%",noone,noone); break;
		case 4: scr_add_modifier_new(scr_module_modifier_bullet_speed_bonus,2,"Bullet speed +2",noone,noone); break;
		case 5: scr_add_modifier_new(scr_module_modifier_bullet_speed_multiplier,0.2,"Bullet speed +20%",noone,noone); break;
		case 6: scr_add_modifier_new(scr_module_modifier_recoil_bonus,-6,"Recoil -2",noone,noone); break;
		case 7: scr_add_modifier_new(scr_module_modifier_recoil_multiplier,-0.2,"Recoil -20%",noone,noone); break;
		case 8: scr_add_modifier_new(scr_module_modifier_rof_bonus,-4,"Rate of fire +2",noone,noone); break;
		case 9: scr_add_modifier_new(scr_module_modifier_rof_multiplier,-0.2,"Rate of fire +20%",noone,noone); break;
		case 10: scr_add_modifier_new(scr_module_modifier_magnum_bullets,0,noone,noone,noone); break;
		case 11: scr_add_modifier_new(scr_module_modifier_multi_shot,irandom(4)+1,noone,noone,noone); break;
		case 12: scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,45,noone,noone,noone); break;
		case 13: scr_add_modifier_new(scr_module_modifier_homing_bullets,0,noone,noone,noone); break;
		case 14: scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,0,noone,noone,noone); break;
		case 15: scr_add_modifier_new(scr_module_modifier_destroy_enemy_bullets,0,noone,noone,noone); break;
		case 16: scr_add_modifier_new(scr_module_modifier_electrifying_bullets,0,noone,noone,noone); break;
		}