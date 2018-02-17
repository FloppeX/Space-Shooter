x = obj_player.phy_position_x + 400
x = obj_player.phy_position_y

number_of_items = 3

x_starting_offset = 200
y_starting_offset = 0
x_step_offset = 0
y_step_offset = 60
number_of_items = 3

for(var i = 0; i < number_of_items; i+=1;){
	module_holders[i] = instance_create_depth(x,y,-10,obj_module_holder);
	module_holders[i].owner= obj_player
	module_holders[i].persistent = false
	module_holders[i].placement_offset_angle = 0
	module_holders[i].placement_offset_distance = 0
	module_holders[i].x = x + x_starting_offset + i * x_step_offset;
	module_holders[i].y = x + y_starting_offset - (0.5 * y_step_offset * (number_of_items-1)) + i * y_step_offset;

	temp_module = scr_create_random_module();
	temp_module.owner = obj_player
	temp_module.offset_angle = irandom(3) * 90;
	switch (temp_module.offset_angle){
		case 0: temp_module.activation_button = 4; break;
		case 90: temp_module.activation_button = 2; break;
		case 180: temp_module.activation_button = 1; break;
		case 270: temp_module.activation_button = 3; break;
		}
		
	module_holders[i].module = temp_module

	}



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

