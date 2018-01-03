// Gamepad controls

gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false

global.gamepad_button_x = false;
global.gamepad_button_y = false;
global.gamepad_button_a = false;
global.gamepad_button_b = false;

turn_clockwise = 0;
turn_counter_clockwise = 0;
add_thrust = 0;
shoot_1 = 0;
shoot_2 = 0;

// Ship variables

depth = -5

phy_rotation = -90
mirror_x = 0
mirror_y = 0

obj_health = 10000000;

thrust = 800;
rotation_force = 100;
drift_resistance = 800
target_rotation = 0

max_speed = 6;

obj_rotation = 0;
col = 0;

controls_disabled = false

invisible = false
alpha = 1

// Set view object

//global.obj_to_center_view_on = id // View will center on player

// Modules


ship_modules[0] = instance_create_depth(x,y,-10,obj_module_gun);
ship_modules[0].offset_angle = 0;
ship_modules[0].activation_button = 4
ship_modules[1] = instance_create_depth(x,y,-10,obj_module_empty);
ship_modules[1].offset_angle = 0;
ship_modules[1].activation_button = 4
ship_modules[2] = instance_create_depth(x,y,-10,obj_module_gun);
ship_modules[2].offset_angle = 0;
ship_modules[2].activation_button = 4
ship_modules[3] = instance_create_depth(x,y,-10,obj_module_lightning_gun);
ship_modules[3].offset_angle = -90;
ship_modules[3].activation_button = 3
ship_modules[4] = instance_create_depth(x,y,-10,obj_module_empty);
ship_modules[4].offset_angle = 0;
ship_modules[4].activation_button = 4
ship_modules[5] = instance_create_depth(x,y,-10,obj_module_rocket_launcher);
ship_modules[5].offset_angle = 90;
ship_modules[5].activation_button = 2
ship_modules[6] = instance_create_depth(x,y,-10,obj_module_gun);
ship_modules[6].offset_angle = 180; 
ship_modules[6].activation_button = 1
for(var i = 0; i < 7; i+=1;){
	ship_modules[i].owner= id;
	}


// Particles

part_engine_flame_player = part_type_create();
part_engine_flame_player = global.part_rocket_smoke

engine_flame_emitter_1 = part_emitter_create(global.part_system_below);
engine_flame_emitter_2 = part_emitter_create(global.part_system_below);

dust_emitter = part_emitter_create(global.part_system_below);
