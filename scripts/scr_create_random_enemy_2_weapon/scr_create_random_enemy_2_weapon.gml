var h = irandom(global.difficulty_level+2)
h = clamp(h,0,8)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy_2); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy_2); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_blaster_enemy_2); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_blaster_enemy_2); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy_2); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy_2); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_zapper_enemy_2); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_cannon_enemy_2); break;
		case 8: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher_enemy_2); break;
		}
	temp_module.persistent = false

	repeat(global.difficulty_level-1){
		var p = irandom(99)
		if p <= 59 and p >= 40
			with (temp_module){
				scr_add_random_modifier_common();
				cost += 1
				}
		if p <= 39 and p >= 25
			with (temp_module){
				scr_add_random_modifier_uncommon();
				cost += 2
				}
		var p = irandom(99)
		if p <= 24 and p >= 10
			with (temp_module){
				scr_add_random_modifier_rare();
				cost += 4
				}
		var p = irandom(99)
		if p <= 9 and p >= 0
			with (temp_module){
				scr_add_random_modifier_exotic();
				cost += 4
				}
				
	// Chance for negative modifier
	repeat(4-global.difficulty_level){
		var p = irandom(99)
		if p <= 29 and p >= 0
			with (temp_module){
				scr_add_random_modifier_negative();
				cost -= 2
				}
		}
	}

return temp_module;
