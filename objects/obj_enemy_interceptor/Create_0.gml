event_inherited();

i = irandom(3)
switch (i){
	case 0: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_gun_enemy); break;
	case 1: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	}

ship_modules[0].offset_angle = 0;
ship_modules[0].placement_offset_distance = 11
ship_modules[0].placement_offset_angle = 35

for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	ship_modules[i].owner= id;


gun_bullet_speed = ship_modules[0].bullet_speed