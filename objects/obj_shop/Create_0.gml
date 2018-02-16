phy_position_x = obj_player.phy_position_x + 100
phy_position_y = obj_player.phy_position_y - 60

energy = 100
phy_rotation = -90

x_starting_offset = 0
y_starting_offset = 0
x_step_offset = 34
y_step_offset = 34

for(var i = 0; i < 1; i+=1;){
	module_holders[i] = instance_create_depth(x,y,-10,obj_module_holder);
	module_holders[i].owner= id;
	module_holders[i].placement_offset_angle = 0
	module_holders[i].placement_offset_distance = 0
	module_holders[i].module = scr_create_random_module();
	module_holders[i].module.offset_angle = -90
	module_holders[i].module.offset_angle = irandom(3) * 90;
	module_holders[i].x = x + x_starting_offset + i * x_step_offset;
	module_holders[i].y = y + y_starting_offset;
	
	switch (module_holders[i].module.offset_angle){
		case 0: module_holders[i].activation_button = 4; break;
		case 90: module_holders[i].activation_button = 2; break;
		case 180: module_holders[i].activation_button = 1; break;
		case 270: module_holders[i].activation_button = 3; break;
		}
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

