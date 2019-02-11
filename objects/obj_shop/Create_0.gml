// junk variables..
draw_scale = 1
energy = 0
phy_rotation = -90
add_thrust = 0
gamepad_button[0] = false
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false

target_object = obj_enemy_ship

alpha = 1

lateral_drift_direction = 0
drift_resistance_force = 0
rotation_value = 0

// Variables that really belong to ships but that this object needs
max_speed_multiplier = 0 
max_speed_bonus = 0

rotation_speed_multiplier = 1 
rotation_speed_bonus = 0

drift_resistance_multiplier = 1
drift_resistance_bonus = 0


max_health_multiplier = 1
max_health_bonus = 0

max_energy_multiplier = 1
max_energy_bonus = 0

energy_increase_multiplier = 1
energy_increase_bonus = 0

////

number_of_guns = 3
number_of_utility = 2
number_of_crew = 2
number_of_items = number_of_guns + number_of_utility + number_of_crew
number_of_items_left = 3
number_of_items_to_select = 99

enter_shop = true
exit_shop = false

x_step_offset = 60
y_step_offset = 60

for(var i = 0; i < number_of_items; i+=1;){
	module_holders[i] = instance_create_depth(x,y,-10,obj_module_holder);
	module_holders[i].owner = id
	module_holders[i].visible = true
	module_holders[i].persistent = false
	module_holders[i].placement_offset_angle = 0
	module_holders[i].placement_offset_distance = 0
	module_holders[i].x = phy_position_x + 200 + 0 * x_step_offset;
	module_holders[i].y = phy_position_y - (0.5 * y_step_offset * (number_of_items-1)) + i * y_step_offset;

	if i < number_of_guns
		temp_module = scr_create_random_gun();
	else {
		if i < number_of_guns + number_of_utility
		temp_module = scr_create_random_device();
		else 
			temp_module = scr_create_random_crew();
		}
	temp_module.owner = id
	temp_module.owned_by_shop = true

	module_holders[i].module = temp_module
	temp_module.phy_position_x = module_holders[i].x
	temp_module.phy_position_y = module_holders[i].y
	temp_module.phy_rotation = ( phy_rotation - temp_module.offset_angle)
	temp_module.joint = physics_joint_revolute_create(id, temp_module,temp_module.phy_position_x,temp_module.phy_position_y,0, 360, 0, 10,3,1,0);
	}
	
// Get module identities - used to check if more items can be taken...

module_identities[number_of_items] = noone
for(var i = 0; i < number_of_items; i+=1;)
	module_identities[i] = module_holders[i].module.id
	
// Audio

shop_audio_emitter = audio_emitter_create()
audio_emitter_falloff(shop_audio_emitter, 100, 800, 1);
audio_emitter_position(shop_audio_emitter,phy_position_x,phy_position_y,0)

// Create buttons

repair_button = instance_create_depth(x-200,y-30,-10,obj_shop_button_repair);
reload_button = instance_create_depth(x-260,y-30,-10,obj_shop_button_reload);
exit_button = instance_create_depth(x-200,y+30,-10,obj_shop_button_exit);