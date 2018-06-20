var h = irandom(14)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_blaster); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_cannon); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_zapper); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher); break;
		//case 6: temp_module = instance_create_depth(0,0,-10,obj_module_mine_layer); break;
		//case 7: temp_module = instance_create_depth(0,0,-10,obj_module_gravity_shield); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_engine); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_shield_player);
			temp_module.offset_angle = irandom(3) * 90;
			break;
		case 8: temp_module = instance_create_depth(0,0,-10,obj_module_force_shield_player);
			temp_module.offset_angle = irandom(3) * 90;
			break;
		case 9: temp_module = instance_create_depth(0,0,-10,obj_module_reflective_shield_player);
			temp_module.offset_angle = irandom(3) * 90;
			break;
		case 10: temp_module = instance_create_depth(0,0,-10,obj_module_rotational_thrusters); break;
		case 11: temp_module = instance_create_depth(0,0,-10,obj_module_turbocharger); break;
		case 12: temp_module = instance_create_depth(0,0,-10,obj_module_high_powered_ammo); break;
		case 13: temp_module = instance_create_depth(0,0,-10,obj_module_armor_plating); break;
		/*case 10: temp_module = instance_create_depth(0,0,-10,obj_module_teleporter); break;
		case 11: temp_module = instance_create_depth(0,0,-10,obj_module_cloaking_device); break;
		*/
		
		}
	if object_is_ancestor(temp_module.object_index, obj_module_gun){
		repeat(global.difficulty_level){
			var p = irandom(99)
			if p <= 49 and p > 14
				with (temp_module)
					scr_add_random_modifier_common();
			var p = irandom(99)
			if p <= 14 and p >= 0
				with (temp_module)
					scr_add_random_modifier_uncommon();
		}
	if object_is_ancestor(temp_module.object_index, obj_module_engine)
		with(temp_module)
			offset_angle = 180
	if object_is_ancestor(temp_module.object_index, obj_module_shield_player)
		with(temp_module)
			offset_angle = irandom(3) * 90;
	if object_is_ancestor(temp_module.object_index, obj_module_gravity_shield){
		temp_module.activation_button = 5
		}
	}	
	
return temp_module;
