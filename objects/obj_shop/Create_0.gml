phy_position_x = obj_player.phy_position_x + 100
phy_position_y = obj_player.phy_position_y - 60
for(var i = 0; i < 9; i+=1;){
	
	shop_modules[i] = instance_create_depth(x,y,-10,obj_module_gun)
	shop_modules[i].offset_angle = irandom(3) * 90;
	shop_modules[i].phy_rotation = 0

	shop_modules[i].phy_rotation = -90 + shop_modules[i].offset_angle
	var h = irandom(4)
	switch (h){
		case 0: shop_modules[i] = instance_create_depth(phy_position_x,phy_position_y,-10,obj_module_empty); break;
		case 1: shop_modules[i] = instance_create_depth(phy_position_x,phy_position_y,-10,obj_module_gun); break;
		case 2: shop_modules[i] = instance_create_depth(phy_position_x,phy_position_y,-10,obj_module_rocket_launcher); break;
		case 3: shop_modules[i] = instance_create_depth(phy_position_x,phy_position_y,-10,obj_module_shield); break;
	}
	
	}

shop_modules[0].phy_position_x = phy_position_x + 30;
shop_modules[0].phy_position_y = phy_position_y + 30;
shop_modules[1].phy_position_x = phy_position_x + 60;
shop_modules[1].phy_position_y = phy_position_y + 30;
shop_modules[2].phy_position_x = phy_position_x + 90;
shop_modules[2].phy_position_y = phy_position_y + 30;
shop_modules[3].phy_position_x = phy_position_x + 30;
shop_modules[3].phy_position_y = phy_position_y + 60;
shop_modules[4].phy_position_x = phy_position_x + 60;
shop_modules[4].phy_position_y = phy_position_y + 60;
shop_modules[5].phy_position_x = phy_position_x + 90;
shop_modules[5].phy_position_y = phy_position_y + 90;
shop_modules[6].phy_position_x = phy_position_x + 30;
shop_modules[6].phy_position_y = phy_position_y + 90;
shop_modules[7].phy_position_x = phy_position_x + 60;
shop_modules[7].phy_position_y = phy_position_y + 90;
shop_modules[8].phy_position_x = phy_position_x + 90;
shop_modules[8].phy_position_y = phy_position_y + 90;

