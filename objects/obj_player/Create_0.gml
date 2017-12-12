// Gamepad controls

turn_clockwise = 0;
turn_counter_clockwise = 0;
add_thrust = 0;
shoot_1 = 0;
shoot_2 = 0;

// Ship variables
phy_rotation = 0

mirror_x = 0
mirror_y = 0

obj_health = 10000000;

thrust = 400;
rotation_force = 160;
drift_resistance = 300

max_speed = 6;

obj_rotation = 0;
col = 0;

// Modules

event_inherited();

module_1 = instance_create_depth(x,y,0,obj_module_gun);
module_1.owner = self;

module_2 = instance_create_depth(x,y,0,obj_module_rocket_launcher);
module_2.owner = self;

module_3 = instance_create_depth(x,y,0,obj_module_shield);
module_3.owner = self;

// Particle emitters

// Particles

dust_emitter = part_emitter_create(global.part_system_below);
