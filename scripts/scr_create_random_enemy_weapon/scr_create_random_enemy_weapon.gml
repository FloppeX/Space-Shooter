var temp_module
var h = irandom(global.difficulty_level+3)
h = clamp(h,0,9)
	switch (h){
		case 0: temp_module = instance_create_depth(0,0,-10,obj_module_sawblade_enemy); break;
		case 1: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
		case 2: temp_module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
		case 3: temp_module = instance_create_depth(0,0,-10,obj_module_blaster_enemy); break;
		case 4: temp_module = instance_create_depth(0,0,-10,obj_module_blaster_enemy); break;
		case 5: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
		case 6: temp_module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
		case 7: temp_module = instance_create_depth(0,0,-10,obj_module_sawblade_enemy); break;
		case 8: temp_module = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
		case 9: temp_module = instance_create_depth(0,0,-10,obj_module_rocket_launcher_enemy); break;
		}
	temp_module.persistent = false
	temp_module.offset_angle = irandom(3) * 90;

	if temp_module.offset_angle == 0
		temp_module.placement_req_above = noone
	if temp_module.offset_angle == 90
		temp_module.placement_req_left = noone
	if temp_module.offset_angle == 180
		temp_module.placement_req_below = noone
	if temp_module.offset_angle == 270
		temp_module.placement_req_right = noone
		
	repeat(global.difficulty_level-1){
		var p = irandom(99)
		if p <= 59 and p >= 40
			with (temp_module)
				scr_add_random_modifier_common()
		if p <= 39 and p >= 25
			with (temp_module)
				scr_add_random_modifier_uncommon();
		var p = irandom(99)
		if p <= 24 and p >= 10
			with (temp_module)
				scr_add_random_modifier_rare();
		var p = irandom(99)
		if p <= 9 and p >= 0
			with (temp_module)
				scr_add_random_modifier_exotic();
				
	// Chance for negative modifier
	repeat(4-global.difficulty_level){
		var p = irandom(99)
		if p <= 29 and p >= 0
			with (temp_module)
				scr_add_random_modifier_negative();
		}
	}

return temp_module;
