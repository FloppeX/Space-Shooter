var i = irandom(11)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_damage_bonus,irandom(2)+1); break;
		case 1: scr_add_modifier_new(scr_module_modifier_damage_multiplier,(irandom(3)+1)*0.1); break;
		case 2: scr_add_modifier_new(scr_module_modifier_range_bonus,50*(irandom(5)+1)); break;
		case 3: scr_add_modifier_new(scr_module_modifier_range_multiplier,(irandom(2)+1)*0.1); break;
		case 4: scr_add_modifier_new(scr_module_modifier_bullet_speed_bonus,(irandom(2)+1)); break;
		case 5: scr_add_modifier_new(scr_module_modifier_bullet_speed_multiplier,(irandom(3)+1)*0.1); break;
		case 6: scr_add_modifier_new(scr_module_modifier_recoil_bonus,-((irandom(2)+1))); break;
		case 7: scr_add_modifier_new(scr_module_modifier_recoil_multiplier,-(irandom(2)+1)*0.1); break;
		case 8: scr_add_modifier_new(scr_module_modifier_rof_bonus,-(irandom(2)+1)); break;
		case 9: scr_add_modifier_new(scr_module_modifier_rof_multiplier,-(irandom(3)+1)*0.1); break;
		
		case 10: scr_add_modifier_new(scr_module_modifier_magnum_bullets,0); break;
		case 11: scr_add_modifier_new(scr_module_modifier_multi_shot,irandom(4)+1); break;
		/*
		case 6: scr_add_modifier(scr_module_modifier_range_plus_100); break;
		case 7: scr_add_modifier(scr_module_modifier_range_plus_200); break;
		case 8: scr_add_modifier(scr_module_modifier_range_plus_300); break;
		
		case 9: scr_add_modifier(scr_module_modifier_range_mult_10); break;
		case 10: scr_add_modifier(scr_module_modifier_range_mult_20); break;
		case 11: scr_add_modifier(scr_module_modifier_range_mult_30); break;	
		
		case 12: scr_add_modifier(scr_module_modifier_bullet_speed_plus_1); break;
		case 13: scr_add_modifier(scr_module_modifier_bullet_speed_plus_2); break;
		case 14: scr_add_modifier(scr_module_modifier_bullet_speed_plus_3); break;
		
		case 15: scr_add_modifier(scr_module_modifier_bullet_speed_mult_10); break;
		case 16: scr_add_modifier(scr_module_modifier_bullet_speed_mult_20); break;
		case 17: scr_add_modifier(scr_module_modifier_bullet_speed_mult_30); break;
		
		case 18: scr_add_modifier(scr_module_modifier_rof_plus_1); break;
		case 19: scr_add_modifier(scr_module_modifier_rof_plus_2); break;
		case 20: scr_add_modifier(scr_module_modifier_rof_plus_3); break;
		
		case 21: scr_add_modifier(scr_module_modifier_rof_mult_10); break;
		case 22: scr_add_modifier(scr_module_modifier_rof_mult_20); break;
		case 23: scr_add_modifier(scr_module_modifier_rof_mult_30); break;
*/
		}