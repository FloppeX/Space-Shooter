// junk variables..
energy = 0
phy_rotation = -90
add_thrust = 0
gamepad_button[0] = false
gamepad_button[1] = false
gamepad_button[2] = false
gamepad_button[3] = false
gamepad_button[4] = false
gamepad_button[5] = false


// Variables that really below to ships but that this object needs
max_speed_base = 5
max_speed_multiplier = 0 
max_speed_bonus = 0

//

number_of_items = 6
number_of_items_left = 3
number_of_items_to_select = 1

x_starting_offset = 200
y_starting_offset = 200
x_step_offset = 0
y_step_offset = 60

for(var i = 0; i < number_of_items; i+=1;){
	module_holders[i] = instance_create_depth(x,y,-10,obj_module_holder);
	module_holders[i].owner = id
	module_holders[i].visible = true
	module_holders[i].persistent = false
	module_holders[i].placement_offset_angle = 0
	module_holders[i].placement_offset_distance = 0
	module_holders[i].x = phy_position_x + x_starting_offset + i * x_step_offset;
	module_holders[i].y = phy_position_y + y_starting_offset - (0.5 * y_step_offset * (number_of_items-1)) + i * y_step_offset;

	temp_module = scr_create_random_module();
	temp_module.owner = id
	temp_module.owned_by_shop = true
	if object_is_ancestor(temp_module.object_index, obj_module_gun){
		temp_module.offset_angle = irandom(3) * 90;
		switch (temp_module.offset_angle){
			case 0: temp_module.activation_button = 4; break;
			case 90: temp_module.activation_button = 2; break;
			case 180: temp_module.activation_button = 1; break;
			case 270: temp_module.activation_button = 3; break;
			}
		switch (temp_module.offset_angle){
			case 0: temp_module.activation_button = 4; break;
			case 90: temp_module.activation_button = 2; break;
			case 180: temp_module.activation_button = 1; break;
			case 270: temp_module.activation_button = 3; break;
			}
		}
	if object_is_ancestor(temp_module.object_index, obj_module_shield_player)
		with(temp_module)
			offset_angle = irandom(3) * 90;
	module_holders[i].module = temp_module
	}
	
// Get module identities - used to check if more items can be taken...

module_identities[number_of_items] = noone
for(var i = 0; i < number_of_items; i+=1;)
	module_identities[i] = module_holders[i].module.id

/*
shop_modules[0].x = phy_position_x + x_starting_offset;
shop_modules[0].phy_position_y = phy_position_y + y_starting_offset;
shop_modules[1].phy_position_x = phy_position_x + x_starting_offset + x_step_offset;
shop_modules[1].phy_position_y = phy_position_y + y_starting_offset;
shop_modules[2].phy_position_x = phy_position_x + x_starting_offset + 2 * x_step_offset;
shop_modules[2].phy_position_y = phy_position_y + y_starting_offset;
/*
shop_modules[3].phy_position_x = phy_position_x + x_starting_offset;
shop_modules[3].phy_position_y = phy_position_y + y_starting_offset + y_step_offset;
shop_modules[4].phy_position_x = phy_position_x + x_starting_offset + x_step_offset;
shop_modules[4].phy_position_y = phy_position_y + y_starting_offset + y_step_offset;
shop_modules[5].phy_position_x = phy_position_x + x_starting_offset + 2 * x_step_offset;
shop_modules[5].phy_position_y = phy_position_y + y_starting_offset + y_step_offset;
shop_modules[6].phy_position_x = phy_position_x + x_starting_offset;
shop_modules[6].phy_position_y = phy_position_y + y_starting_offset + 2 * y_step_offset;
shop_modules[7].phy_position_x = phy_position_x + x_starting_offset + x_step_offset;
shop_modules[7].phy_position_y = phy_position_y + y_starting_offset + 2 * y_step_offset;
shop_modules[8].phy_position_x = phy_position_x + x_starting_offset + 2 * x_step_offset;
shop_modules[8].phy_position_y = phy_position_y + y_starting_offset + 2 * y_step_offset;

