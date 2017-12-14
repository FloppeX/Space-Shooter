global.active_module = instance_create_depth(0,0,-10,obj_module_empty)
global.selected_module = instance_create_depth(0,0,-10,obj_module_empty)
global.swap_module = instance_create_depth(0,0,-10,obj_module_empty)

test_module_1 = instance_create_depth(obj_player.phy_position_x + 60,obj_player.phy_position_y - 30,-10,obj_module_gun)
test_module_2 = instance_create_depth(obj_player.phy_position_x + 60,obj_player.phy_position_y + 30,-10,obj_module_rocket_launcher)
