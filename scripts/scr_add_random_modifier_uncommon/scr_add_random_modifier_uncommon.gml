var i = irandom(9)
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
		}