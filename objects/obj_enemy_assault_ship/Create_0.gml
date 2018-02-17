event_inherited();

max_speed = 3
max_thrust = 440

i = irandom(4)
switch (i){
	case 0: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_blaster_enemy); break;
	case 1: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	case 4: ship_modules[0] = instance_create_depth(0,0,-10,obj_module_zapper_enemy); break;
	}

ship_modules[0].offset_angle = 0;
ship_modules[0].placement_offset_distance = 22
ship_modules[0].placement_offset_angle = 45

i = irandom(4)
switch (i){
	case 0: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_blaster_enemy); break;
	case 1: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	case 4: ship_modules[1] = instance_create_depth(0,0,-10,obj_module_zapper_enemy); break;
	}

ship_modules[1].offset_angle = 0;
ship_modules[1].placement_offset_distance = 22
ship_modules[1].placement_offset_angle = -45


for(var i = 0; i < array_length_1d(ship_modules); i+=1;){

	ship_modules[i].owner = id;
	ship_modules[i].persistent = false;
	}

gun_bullet_speed = ship_modules[0].bullet_speed

//Sounds

sound_priority = 0.5

explosion_sound = snd_explosion_large_03
engine_sound = snd_engine_3
engine_noise = noone

ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 100, 800, 1);

engine_noise = audio_play_sound_on(ship_audio_emitter,engine_sound,1,sound_priority)