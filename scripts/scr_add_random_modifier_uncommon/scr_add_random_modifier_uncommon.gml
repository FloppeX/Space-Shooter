var i = irandom(5)
	switch (i){
		case 0: scr_add_modifier(scr_module_modifier_bullet_color_random); break;
		case 1: scr_add_modifier(scr_module_modifier_wavy_bullets); break;
		case 2: scr_add_modifier(scr_module_modifier_homing_bullets); break;
		case 3: scr_add_modifier(scr_module_modifier_aim_towards_enemy); break;
		case 4: scr_add_modifier(scr_module_modifier_destroy_enemy_bullets); break;
		case 5: scr_add_modifier(scr_module_modifier_multi_shot); break;
		}