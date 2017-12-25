phy_position_x = mouse_x
phy_position_y = mouse_y

global.active_module.phy_position_x = phy_position_x
global.active_module.phy_position_y = phy_position_y
global.active_module.phy_rotation = -90 + global.active_module.offset_angle

if mouse_check_button_pressed(mb_left){
	global.active_module.phy_position_x = 0
	global.active_module.phy_position_y = 0
	
	global.selected_module = collision_rectangle(phy_position_x-12, phy_position_y-12, phy_position_x+12, phy_position_y+12, obj_module, false, true);
	if global.selected_module != noone {
		with(global.swap_module){
			instance_change(global.selected_module.object_index,true)
			offset_angle = global.selected_module.offset_angle
			phy_rotation = -90 + offset_angle
			}
		with(global.selected_module){
			instance_change(global.active_module.object_index,true)
			offset_angle = global.active_module.offset_angle
			phy_rotation = -90 + offset_angle
			switch (offset_angle){
				case 0: activation_button = 4; break;
				case 90: activation_button = 2; break;
				case 180: activation_button = 1; break;
				case 270: activation_button = 3; break;
				}
			}
		with(global.active_module){
			instance_change(global.swap_module.object_index,true)
			offset_angle = global.swap_module.offset_angle
			phy_rotation = -90
			persistent = false
			}
		}
	}

