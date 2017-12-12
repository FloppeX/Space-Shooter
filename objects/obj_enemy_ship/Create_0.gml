// Ship properties

mirror_x = 0
mirror_y = 0

obj_rotation = 0
obj_health = 2

target_speed = 0
max_speed = 5
thrust = 0
max_thrust = 300

rotation_force = 100;
drift_resistance = 80;

damage = 4;

ai_mode = 1
shoot = false
direction_randomizer = 0

target = noone;
targeting_arc = 90;
target_dir = 0
angle_diff = 0
ai_timer = 0
avoiding_obstacle = false;

target_point_x = irandom(global.wrap_border_left + global.play_area_width)
target_point_y = irandom(global.wrap_border_left + global.play_area_width)

	
part_engine_flame = part_type_create();
part_engine_flame = global.part_rocket_smoke


gun = instance_create_depth(x,y,0,obj_module_gun);
gun.owner = self;
gun.bullet_type = obj_bullet_enemy
gun.muzzle_velocity = 12;
gun.bullet_interval = 18;