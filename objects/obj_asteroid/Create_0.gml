event_inherited();

phy_rotation = random(360);
phy_angular_velocity = random(200)-100
phy_speed_x = random (8)-4
phy_speed_y = random (8)-4

max_speed = 3
max_rotation_speed = 50

mirror_x = 0;
mirror_y = 0;

damage = 10
push_force = 60//900

child_object = obj_asteroid_medium;
obj_health = 8;
death_effect_size = 2;

secondary_color = make_colour_rgb(94,228,174)

pickup_object_type = noone
pickup_objects = 0

//

sound = snd_space_hum_1
asteroid_audio_emitter = audio_emitter_create()
audio_emitter_falloff(asteroid_audio_emitter, 100, 600, 1);
asteroid_noise = audio_play_sound_on(asteroid_audio_emitter,sound,1,1)
audio_sound_set_track_position(asteroid_noise,random(audio_sound_length(sound)));
