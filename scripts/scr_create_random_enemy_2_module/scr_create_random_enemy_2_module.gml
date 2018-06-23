var h = irandom(10)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_blaster_enemy_2); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy_2); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy_2); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_blaster_enemy_2); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy_2); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy_2); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_cannon_enemy_2); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_zapper_enemy_2); break;
		case 8: temp_module = instance_create_depth(0,0,-10,obj_module_shield_enemy_2); break;
		case 9: temp_module = instance_create_depth(0,0,-10,obj_module_force_shield_enemy_2); break;
		case 10: temp_module = instance_create_depth(0,0,-10,obj_module_reflective_shield_enemy_2); break;
		}
	temp_module.persistent = false
	if object_is_ancestor(temp_module.object_index, obj_module_gun){
		repeat(global.difficulty_level){
			var p = irandom(99)
			if p <= 20 and p > 10
				with (temp_module)
					scr_add_random_modifier_common();
			var p = irandom(99)
			if p <= 10 and p >= 0
				with (temp_module)
					scr_add_random_modifier_uncommon();					
		}
	}	
	
return temp_module;
