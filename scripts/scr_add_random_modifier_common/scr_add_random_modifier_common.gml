var i = irandom(3)
	switch (i){
		case 0: scr_add_modifier(scr_modifier_bullet_color_random); break;
		case 1: scr_add_modifier(scr_module_modifier_damage_plus_1); break;
		case 2: scr_add_modifier(scr_module_modifier_range_plus_100); break;
		case 3: scr_add_modifier(scr_module_modifier_rof_plus_1); break;
		}