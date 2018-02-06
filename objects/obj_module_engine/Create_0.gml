event_inherited();

thrust = 400;
add_thrust = 0;

// Particles

part_engine_flame = part_type_create();
part_engine_flame = global.flame_particle
part_type_shape(part_engine_flame,pt_shape_disk);
part_type_size(part_engine_flame,0.08,0.12,0,0);
part_type_scale(part_engine_flame,1,1);
part_type_color3(part_engine_flame,c_white,c_yellow,c_red);
part_type_alpha3(part_engine_flame,1,0.5,0);
part_type_speed(part_engine_flame,0,10,0,0);
part_type_life(part_engine_flame,1,5);


sound_priority = random(0.5)+0.5

sound = snd_engine_1

engine_noise = audio_play_sound_on(module_audio_emitter,sound,1,sound_priority)
