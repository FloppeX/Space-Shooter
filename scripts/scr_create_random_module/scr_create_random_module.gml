var h = irandom(7)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_blaster); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_shield); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_gravity_shield); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_zapper_new); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_mine_layer); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_teleporter); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_cloaking_device); break;
		}
		
/*
with (temp_module)
	scr_add_random_modifier_common();

with (temp_module)
	scr_add_random_modifier_uncommon();

with (temp_module)
	scr_add_random_modifier_rare();
*/
return temp_module;
