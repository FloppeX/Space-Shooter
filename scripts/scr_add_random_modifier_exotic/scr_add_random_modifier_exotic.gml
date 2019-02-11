var i = irandom(8)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_magnum_bullets,0,"Magnum bullets",noone,noone); break;
		case 1: scr_add_modifier_new(scr_module_modifier_multi_shot,1,"Double shot",noone,noone); break;
		case 2: scr_add_modifier_new(scr_module_modifier_multi_shot,2,"Triple shot",noone,noone); break;
		case 3: scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,45,"Auto-turrets",noone,noone); break;
		case 4: scr_add_modifier_new(scr_module_modifier_homing_bullets,0,"Homing bullets",noone,noone); break;
		case 5: scr_add_modifier_new(scr_module_modifier_destroy_enemy_bullets,0,"Blocking bullets",noone,noone); break;
		case 6: scr_add_modifier_new(scr_module_modifier_electrifying_bullets,0,"Electric bullets",noone,noone); break;
		case 7: scr_add_modifier_new(scr_module_modifier_heavy_bullets,0,"Higher knockback",noone,noone); break;
		case 8: scr_add_modifier_new(scr_module_modifier_charm_bullets,0,"Charm bullets",noone,noone); break;
		}