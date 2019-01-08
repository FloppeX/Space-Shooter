var i = irandom(7)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_bullet_color_random,0); break;
		case 1: scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,45); break;
		case 2: scr_add_modifier_new(scr_module_modifier_homing_bullets,0); break;
		case 3: scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,0); break;
		case 4: scr_add_modifier_new(scr_module_modifier_destroy_enemy_bullets,0); break;
		case 5: scr_add_modifier_new(scr_module_modifier_multi_shot,0); break;
		case 6: scr_add_modifier_new(scr_module_modifier_hacking_bullets,0); break;
		case 7: scr_add_modifier_new(scr_module_modifier_electrifying_bullets,0); break;
		
		}