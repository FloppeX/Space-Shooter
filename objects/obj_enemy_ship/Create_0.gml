// Ship properties

mirror_x = 0
mirror_y = 0

obj_rotation = 0
obj_health = 20

max_energy = 100;
energy = max_energy;
energy_increase = 1;

disabled_timer = 0
controls_disabled = false

target_speed = 0
max_speed = 6
thrust = 0
max_thrust = 360

rotation_force = 100;
drift_resistance = 80;

damage = 4;

ai_mode = 1
shoot_1 = false
direction_randomizer = 0

invisible = false

target = noone;
starting_target_object = obj_player
target_object = starting_target_object

targeting_arc = 360;
seek_range = 1800;
target_dir = 0
angle_diff = 0
ai_timer = 0
avoiding_obstacle = false;


target_point_x = irandom(global.wrap_border_left + global.play_area_width)
target_point_y = irandom(global.wrap_border_left + global.play_area_width)


/*
gun = instance_create_depth(x,y,0,obj_module_gun);
gun.owner = self;
gun.bullet_type_base = obj_bullet_enemy