// Ship properties

mirror_x = 0
mirror_y = 0

draw_scale = 1

obj_rotation = 0
obj_health = 20

max_energy = 100;
energy = max_energy;
energy_increase = 1;

disabled_timer = 0
controls_disabled = false

target_speed = 0
max_speed = 5
thrust = 0
max_thrust = 360

rotation_force = 100;
drift_resistance = 80;

damage = 4;

ai_mode = 1
shoot = false
direction_randomizer = 0
abort_attack = false
attack_duration = 180
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
avoiding_obstacle = false;


target_point_x = irandom(global.wrap_border_left + global.play_area_width)
target_point_y = irandom(global.wrap_border_left + global.play_area_width)


debris_parts[0] = spr_debris_enemy_interceptor_1
debris_parts[1] = spr_debris_enemy_interceptor_2
debris_parts[2] = spr_debris_enemy_interceptor_3
debris_parts[3] = spr_debris_enemy_interceptor_4

