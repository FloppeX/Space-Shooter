var i = irandom(9)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_damage_bonus,3,"Damage +3",noone,noone); break;
		case 1: scr_add_modifier_new(scr_module_modifier_damage_multiplier,0.3,"Damage +30%",noone,noone); break;
		case 2: scr_add_modifier_new(scr_module_modifier_range_bonus,300,"Range +300",noone,noone); break;
		case 3: scr_add_modifier_new(scr_module_modifier_range_multiplier,0.3,"Range +30%",noone,noone); break;
		case 4: scr_add_modifier_new(scr_module_modifier_bullet_speed_bonus,3,"Bullet speed +3",noone,noone); break;
		case 5: scr_add_modifier_new(scr_module_modifier_bullet_speed_multiplier,0.3,"Bullet speed +30%",noone,noone); break;
		case 6: scr_add_modifier_new(scr_module_modifier_recoil_bonus,-9,"Recoil -3",noone,noone); break;
		case 7: scr_add_modifier_new(scr_module_modifier_recoil_multiplier,-0.3,"Recoil -30%",noone,noone); break;
		case 8: scr_add_modifier_new(scr_module_modifier_rof_bonus,-6,"Rate of fire +3",noone,noone); break;
		case 9: scr_add_modifier_new(scr_module_modifier_rof_multiplier,-0.3,"Rate of fire +30%",noone,noone); break;
		}