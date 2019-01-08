// Credits

//credits = irandom(5)+1
pickup_objects = 3+irandom(global.difficulty_level)

// Ship properties

mirror_x = 0
mirror_y = 0

draw_scale = 1
alpha = 1

obj_rotation = 0

max_health = 20
obj_health = 20
old_obj_health = 20
health_bar_timer = 0

max_energy = 100;
energy = max_energy;
energy_increase = 1;

max_particles = 100;
particles = max_particles;

disabled_timer = 0
controls_disabled = false

target_speed = 0
max_speed = 5
thrust = 0
max_thrust = 360
add_thrust = false

// Changeable ship variables

max_speed_base = 4
max_speed_multiplier = 0 
max_speed_bonus = 0

rotation_speed_base = 85
rotation_speed_multiplier = 1 
rotation_speed_bonus = 0

max_health_base = 100 
max_health_multiplier = 1
max_health_bonus = 0

max_energy_base = 100
max_energy_multiplier = 1
max_energy_bonus = 0

max_particles_base = 100
max_particles_multiplier = 1
max_particles_bonus = 0

energy_increase_base = 0.5;
energy_increase_multiplier = 1
energy_increase_bonus = 0

///

max_rotation_speed = 100;
drift_resistance = 14//80;

damage = 4;

ai_mode = 1
shoot = false
direction_randomizer = 0
abort_attack = false
attack_duration = 300
attack_timer = attack_duration

invisible = false

target = noone;
starting_target_object = obj_player
target_object = starting_target_object

targeting_arc = 360;
seek_range = 6000;
target_dir = 0
angle_diff = 0
ai_timer = 0

closest_obstacle = noone
closest_teammate = noone
avoiding_obstacle = false;


target_point_x = irandom(global.wrap_border_left + global.play_area_width)
target_point_y = irandom(global.wrap_border_left + global.play_area_width)


debris_parts[0] = spr_debris_enemy_interceptor_1
debris_parts[1] = spr_debris_enemy_interceptor_2
debris_parts[2] = spr_debris_enemy_interceptor_3
debris_parts[3] = spr_debris_enemy_interceptor_4

// Sounds
sound_priority = 0.5
explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2
engine_noise = noone

ship_audio_emitter = audio_emitter_create()
audio_emitter_falloff(ship_audio_emitter, 100, 800, 1);