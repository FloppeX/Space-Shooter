var i = irandom(2)
	switch (i){
		case 0: scr_add_modifier(scr_module_modifier_wavy_bullets); break;
		case 1: scr_add_modifier(scr_module_modifier_faster_bullet_speed); break;
		case 2: scr_add_modifier(scr_modifier_bullet_color_random); break;
		}