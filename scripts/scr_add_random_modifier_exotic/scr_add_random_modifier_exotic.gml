var i = irandom(15)
	switch (i){
		case 0: scr_add_modifier_new(scr_module_modifier_magnum_bullets,0,"Magnum bullets",noone,noone); break;
		case 1: scr_add_modifier_new(scr_module_modifier_multi_shot,1,"Double shot",noone,noone); break;
		case 2: scr_add_modifier_new(scr_module_modifier_multi_shot,2,"Triple shot",noone,noone); break;
		case 3: scr_add_modifier_new(scr_module_modifier_aim_towards_enemy,45,"Auto-turret","Aims toward enemy",noone); break;
		case 4: scr_add_modifier_new(scr_module_modifier_homing_bullets,0,"Homing bullets",noone,noone); break;
		case 5: scr_add_modifier_new(scr_module_modifier_destroy_enemy_bullets,0,"Blocking bullets",noone,noone); break;
		case 6: scr_add_modifier_new(scr_module_modifier_electrifying_bullets,0,"Electric bullets",noone,noone); break;
		case 7: scr_add_modifier_new(scr_module_modifier_heavy_bullets,0,"Higher knockback",noone,noone); break;
		case 8: scr_add_modifier_new(scr_module_modifier_charm_bullets,0,"Charm bullets",noone,noone); break;
		case 9: scr_add_modifier_new(scr_module_modifier_remote_control,0,"RC-bullets",noone,noone); break;
		case 10: scr_add_modifier_new(scr_module_modifier_beam_effect,0,"Beam bullets",noone,noone); break;
		case 11: scr_add_modifier_new(scr_module_modifier_exploding_bullets,0,"Exploding bullets",noone,noone); break;
		case 12: scr_add_modifier_new(scr_module_modifier_gravity_bullets,0,"Gravity bullets",noone,noone); break;
		case 13: scr_add_modifier_new(scr_module_modifier_rainbow_bullets,0,"Random bullet effects",noone,noone); break;
		case 14: scr_add_modifier_new(scr_module_modifier_decreasing_damage,1,"Decreasing damage",noone,noone); break;
		case 15: scr_add_modifier_new(scr_module_modifier_increasing_damage,1,"Increasing damage",noone,noone); break;
		}