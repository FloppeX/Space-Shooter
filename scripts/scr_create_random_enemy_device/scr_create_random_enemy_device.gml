var i = irandom(global.difficulty_level);
	i = clamp(i,0,4)
switch (i){
	case 0: temp_module = instance_create_depth(0,0,-10,obj_armor); break;
	case 1: temp_module = instance_create_depth(0,0,-10,obj_armor); break;
	case 2: temp_module = instance_create_depth(0,0,-10,obj_module_force_shield_enemy); break;
	case 3: temp_module = instance_create_depth(0,0,-10,obj_module_shield_enemy); break;
	case 4: temp_module = instance_create_depth(0,0,-10,obj_module_reflective_shield_enemy); break;
	}
temp_module.persistent = false
	
temp_module.offset_angle = irandom(3) * 90;
	
return temp_module;
