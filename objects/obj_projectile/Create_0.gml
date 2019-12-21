// Bullet properties

phy_bullet = true

owner = noone
obj_rotation = 0;
travel_direction = 0;

range = 640;
timer = 0

invisible = false
hit_enemy = false;
bullet_scale = 1
draw_scale = 1

damage = 10
push_force = 0

bullet_fixture = noone
color = c_lime
modifiers = noone

starting_range = 0
starting_damage = 0

//Sounds

sound = snd_laser_loop// snd_bullet_whine // snd_tone_loop// 
sound_priority = 1
projectile_audio_emitter = audio_emitter_create()

audio_emitter_falloff(projectile_audio_emitter, 0, 20, 1);
projectile_noise = audio_play_sound_on(projectile_audio_emitter,sound,1,sound_priority)

audio_sound_set_track_position(projectile_noise,random(audio_sound_length(sound)));