event_inherited();

max_speed = 3
max_thrust = 440

// Modules

module_holders[0] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[0].placement_offset_angle = 45
module_holders[0].placement_offset_distance = 22
module_holders[0].activation_button = 4;
module_holders[0].owner = id;
module_holders[0].persistent = false;

i = irandom(4)
switch (i){
	case 0: module_holders[0].module = instance_create_depth(0,0,-10,obj_module_blaster_enemy); break;
	case 1: module_holders[0].module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: module_holders[0].module = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: module_holders[0].module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	case 4: module_holders[0].module = instance_create_depth(0,0,-10,obj_module_zapper_enemy); break;
	}
module_holders[0].module.persistent = false;

	
module_holders[1] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[1].placement_offset_angle = -45
module_holders[1].placement_offset_distance = 22
module_holders[1].activation_button = 4;
module_holders[1].owner = id;
module_holders[1].persistent = false;

i = irandom(4)
switch (i){
	case 0: module_holders[1].module = instance_create_depth(0,0,-10,obj_module_blaster_enemy); break;
	case 1: module_holders[1].module = instance_create_depth(0,0,-10,obj_module_shotgun_enemy); break;
	case 2: module_holders[1].module = instance_create_depth(0,0,-10,obj_module_cannon_enemy); break;
	case 3: module_holders[1].module = instance_create_depth(0,0,-10,obj_module_scatter_gun_enemy); break;
	case 4: module_holders[1].module = instance_create_depth(0,0,-10,obj_module_zapper_enemy); break;
	}
module_holders[1].module.persistent = false;

gun_bullet_speed = module_holders[0].module.bullet_speed

//Sounds

sound_priority = 0.5

explosion_sound = snd_explosion_large_03
engine_sound = snd_engine_3
engine_noise = noone

ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 100, 800, 1);

engine_noise = audio_play_sound_on(ship_audio_emitter,engine_sound,1,sound_priority)