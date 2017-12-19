phy_position_x = obj_player.phy_position_x + 100
phy_position_y = obj_player.phy_position_y - 60
for(var i = 0; i < 9; i+=1;){
	var h = irandom(3)
	switch (h){
		case 0: shop_modules[i] = instance_create_depth(0,0,-10,obj_module_gun); break;
		case 1: shop_modules[i] = instance_create_depth(0,0,-10,obj_module_shield); break;
		case 2: shop_modules[i] = instance_create_depth(0,0,-10,obj_module_rocket_launcher); break;
		case 3: shop_modules[i] = instance_create_depth(0,0,-10,obj_module_gun); break;
		}

	shop_modules[i].offset_angle = irandom(3) * 90;
	//shop_modules[i].phy_rotation = 0

	shop_modules[i].phy_rotation = -90 + shop_modules[i].offset_angle
	with (shop_modules[i])
			persistent = false
	
	}

x_starting_offset = 0
y_starting_offset = 0
x_step_offset = 34
y_step_offset = 34

shop_modules[0].phy_position_x = phy_position_x + x_starting_offset;
shop_modules[0].phy_position_y = phy_position_y + y_starting_offset;
shop_modules[1].phy_position_x = phy_position_x + x_starting_offset + x_step_offset;
shop_modules[1].phy_position_y = phy_position_y + y_starting_offset;
shop_modules[2].phy_position_x = phy_position_x + x_starting_offset + 2 * x_step_offset;
shop_modules[2].phy_position_y = phy_position_y + y_starting_offset;
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

