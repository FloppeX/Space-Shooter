event_inherited();

depth = -10

target_type = obj_enemy_ship

// Rocket properties
obj_rotation = 0
obj_health = 1

mirror_x = 0
mirror_y = 0

invisible = false

max_speed = 8//12
thrust = 20//240

range = 3600;

rotation_speed = 60;//20
drift_resistance = 4//25;

hit_enemy = false;
damage = 25;
damage_color = c_lime;

target = noone;
targeting_arc = 120;
seek_range = 1200;
timer = range;

/*
part_engine_flame = part_type_create();
part_engine_flame = global.part_rocket_smoke_small
 