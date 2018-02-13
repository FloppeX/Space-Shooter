event_inherited();

depth = -10

// Rocket properties
obj_rotation = 0
obj_health = 1

mirror_x = 0
mirror_y = 0

invisible = false

cruise_speed = 8
thrust = 140

range = 3600;

rotation_force = 80;
drift_resistance = 15;

hit_enemy = false;
damage = 25;
damage_color = c_lime;
min_damage = 4;
max_damage = 8;

target = noone;
targeting_arc = 120;
seek_range = 1200;
timer = range;

/*
part_engine_flame = part_type_create();
part_engine_flame = global.part_rocket_smoke_small
 