var h = irandom(5)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_blaster); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_cannon); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_zapper); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher); break;
		}
		
	temp_module.offset_angle = irandom(3) * 90;
	
	switch (temp_module.offset_angle){
			case 0: temp_module.activation_button = 4; break;
			case 90: temp_module.activation_button = 3; break;
			case 180: temp_module.activation_button = 1; break;
			case 270: temp_module.activation_button = 2; break;
			}
	
	// Add modifiers
	repeat(global.difficulty_level){
		var p = irandom(99)
		if p <= 59 and p >= 30
			with (temp_module){
				scr_add_random_modifier_common();
				cost += 1
				}
		if p <= 29 and p >= 10
			with (temp_module){
				scr_add_random_modifier_uncommon();
				cost += 2
				}
		var p = irandom(99)
		if p <= 9 and p >= 0
			with (temp_module){
				scr_add_random_modifier_rare();
				cost += 4
				}
				
	// Chance for negative modifier
	repeat(3-global.difficulty_level){
		var p = irandom(99)
		if p <= 29 and p >= 0
			with (temp_module){
				scr_add_random_modifier_negative();
				cost -= 2
				}
		}
		
	}	
	
	
return temp_module;
