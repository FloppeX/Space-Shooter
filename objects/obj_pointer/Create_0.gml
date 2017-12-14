global.active_module = instance_create_depth(0,0,-10,obj_module_empty)
global.selected_module = instance_create_depth(0,0,-10,obj_module_empty)
global.swap_module = instance_create_depth(0,0,-10,obj_module_empty)

//test_module_1 = instance_create_depth(obj_player.phy_position_x + 60,obj_player.phy_position_y - 30,-10,obj_module_gun)
//test_module_1.phy_rotation = -90 + test_module_1.offset_angle
test_module_2 = instance_create_depth(obj_player.phy_position_x + 60,obj_player.phy_position_y + 30,-10,obj_module_rocket_launcher)
test_module_2.phy_rotation = -90 + test_module_2.offset_angle


shop_modules[0].phy_position_x = phy_position_x + lengthdir_x(35,-phy_rotation+45);
shop_modules[0].phy_position_y = phy_position_y + lengthdir_y(35,-phy_rotation+45);
shop_modules[1].phy_position_x = phy_position_x + lengthdir_x(25,-phy_rotation);
shop_modules[1].phy_position_y = phy_position_y + lengthdir_y(25,-phy_rotation);
shop_modules[2].phy_position_x = phy_position_x + lengthdir_x(35,-phy_rotation-45);
shop_modules[2].phy_position_y = phy_position_y + lengthdir_y(35,-phy_rotation-45);
shop_modules[3].phy_position_x = phy_position_x + lengthdir_x(25,-phy_rotation+90);
shop_modules[3].phy_position_y = phy_position_y + lengthdir_y(25,-phy_rotation+90);
shop_modules[4].phy_position_x = phy_position_x
shop_modules[4].phy_position_y = phy_position_y
shop_modules[5].phy_position_x = phy_position_x + lengthdir_x(25,-phy_rotation-90);
shop_modules[5].phy_position_y = phy_position_y + lengthdir_y(25,-phy_rotation-90);
shop_modules[6].phy_position_x = phy_position_x + lengthdir_x(25,-phy_rotation+135);
shop_modules[6].phy_position_y = phy_position_y + lengthdir_y(25,-phy_rotation+135);
shop_modules[7].phy_position_x = phy_position_x + lengthdir_x(25,-phy_rotation+180);
shop_modules[7].phy_position_y = phy_position_y + lengthdir_y(25,-phy_rotation+180);
shop_modules[8].phy_position_x = phy_position_x + lengthdir_x(25,-phy_rotation+135);
shop_modules[8].phy_position_y = phy_position_y + lengthdir_y(25,-phy_rotation+135);
