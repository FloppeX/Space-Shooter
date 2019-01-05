var h = irandom(2)
switch (h){
	case 0: temp_module = instance_create_depth(0,0,-10,obj_module_shield_enemy); break;
	case 1: temp_module = instance_create_depth(0,0,-10,obj_module_force_shield_enemy); break;
	case 2: temp_module = instance_create_depth(0,0,-10,obj_module_reflective_shield_enemy); break;
	}
temp_module.persistent = false

return temp_module;
