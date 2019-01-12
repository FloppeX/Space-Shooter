var h = irandom(5)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_engine); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_shield_player);break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_force_shield_player);break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_reflective_shield_player);break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_armor_player);break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_sawblade);break;
		}
		
return temp_module;
