event_inherited();

max_speed = 3
max_thrust = 440

i = irandom(4)
switch (i){
	case 0: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_gun_enemy); break;
	case 1: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	case 4: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_lightning_gun_enemy); break;
	}

ship_modules[0].offset_angle = 0;
ship_modules[0].placement_offset_distance = 22
ship_modules[0].placement_offset_angle = 45

i = irandom(4)
switch (i){
	case 0: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_gun_enemy); break;
	case 1: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	case 4: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_lightning_gun_enemy); break;
	}

ship_modules[1].offset_angle = 0;
ship_modules[1].placement_offset_distance = 22
ship_modules[1].placement_offset_angle = -45

for(var i = 0; i < array_length_1d(ship_modules); i+=1;){
	ship_modules[i].owner= id;
	}

gun_bullet_speed = ship_modules[0].bullet_speed