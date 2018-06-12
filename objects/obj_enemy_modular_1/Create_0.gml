event_inherited();

add_thrust = false

///


module_holders[0] = instance_create_depth(x,y,-10,obj_module_holder);
module_holders[0].owner = id
module_holders[0].placement_offset_angle = 0
module_holders[0].placement_offset_distance = 24
module_holders[0].module = instance_create_depth(x,y,-10,obj_module_enemy_cockpit_1);
with(module_holders[0].module){
	owner = other;
	persistent = false
	}

module_holders[1] = instance_create_depth(x,y,-10,obj_module_holder);// scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_scatter_gun); //scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_zapper_new);
module_holders[1].owner = id
module_holders[1].placement_offset_angle = 90
module_holders[1].placement_offset_distance = 24
module_holders[1].module = scr_create_random_enemy_module();
with(module_holders[1].module){
	owner = other;
	persistent = false
	}

module_holders[2] = instance_create_depth(x,y,-10,obj_module_holder);//instance_create_depth(x,y,-10,obj_module_empty);
module_holders[2].owner = id
module_holders[2].placement_offset_angle = 0
module_holders[2].placement_offset_distance = 0
module_holders[2].module = instance_create_depth(x,y,-10,obj_module_engine_enemy);
with(module_holders[2].module){
	owner = other;
	persistent = false
	}

module_holders[3] = instance_create_depth(x,y,-10,obj_module_holder);//scr_create_random_module();// instance_create_depth(x,y,-10,obj_module_empty);// instance_create_depth(x,y,-10,obj_module_empty);
module_holders[3].owner = id
module_holders[3].placement_offset_angle = -90
module_holders[3].placement_offset_distance = 24
module_holders[3].module = scr_create_random_enemy_module();
with(module_holders[3].module){
	owner = other;
	persistent = false
	}

gun_bullet_speed = 8

//Sounds

sound_priority = 0.5

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2
engine_noise = noone

ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 100, 800, 1);

//engine_noise = audio_play_sound_on(ship_audio_emitter,engine_sound,1,sound_priority)