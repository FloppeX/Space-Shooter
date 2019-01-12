var i = irandom(9)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_damage_bonus,-1,"Damage -1",noone,noone); break;
		case 1: scr_add_modifier_new(scr_module_modifier_damage_multiplier,-0.1,"Damage -10%",noone,noone); break;
		case 2: scr_add_modifier_new(scr_module_modifier_range_bonus,-100,"Range -100",noone,noone); break;
		case 3: scr_add_modifier_new(scr_module_modifier_range_multiplier,-0.1,"Range -10%",noone,noone); break;
		case 4: scr_add_modifier_new(scr_module_modifier_bullet_speed_bonus,-1,"Bullet speed -1",noone,noone); break;
		case 5: scr_add_modifier_new(scr_module_modifier_bullet_speed_multiplier,-0.1,"Bullet speed -10%",noone,noone); break;
		case 6: scr_add_modifier_new(scr_module_modifier_recoil_bonus,+3,"Recoil +1",noone,noone); break;
		case 7: scr_add_modifier_new(scr_module_modifier_recoil_multiplier,+0.1,"Recoil +10%",noone,noone); break;
		case 8: scr_add_modifier_new(scr_module_modifier_rof_bonus,+2,"Rate of fire -1",noone,noone); break;
		case 9: scr_add_modifier_new(scr_module_modifier_rof_multiplier,+0.1,"Rate of fire -10%",noone,noone); break;
		}