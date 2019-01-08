var h = irandom(11)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_blaster); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_cannon); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_zapper); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_engine); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_shield_player);break;
		case 8: temp_module = instance_create_depth(0,0,-10,obj_module_force_shield_player);break;
		case 9: temp_module = instance_create_depth(0,0,-10,obj_module_reflective_shield_player);break;
		case 10: temp_module = instance_create_depth(0,0,-10,obj_armor_player);break;
		case 11: temp_module = instance_create_depth(0,0,-10,obj_module_sawblade);break;
		}
		

if object_is_ancestor(temp_module.object_index, obj_module_engine)
	temp_module.offset_angle = 0
		
if object_is_ancestor(temp_module.object_index, obj_module_parent_device)
	temp_module.offset_angle = irandom(3) * 90;
	
if object_is_ancestor(temp_module.object_index, obj_module_gun){
	
	temp_module.offset_angle = irandom(3) * 90;
	
	switch (temp_module.offset_angle){
			case 0: temp_module.activation_button = 4; break;
			case 90: temp_module.activation_button = 3; break;
			case 180: temp_module.activation_button = 1; break;
			case 270: temp_module.activation_button = 2; break;
			}
			
	repeat(global.difficulty_level){
		var p = irandom(99)
		if p <= 49 and p > 19
			with (temp_module){
				scr_add_random_modifier_common();
				cost += 1
				}
		var p = irandom(99)
		if p <= 19 and p >= 0
			with (temp_module){
				scr_add_random_modifier_uncommon();
				cost += 2
				}
		}
	}	
	
	
return temp_module;
