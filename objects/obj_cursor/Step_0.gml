phy_position_x = mouse_x
phy_position_y = mouse_y


global.active_module.phy_position_x = phy_position_x
global.active_module.phy_position_y = phy_position_y

global.swap_module.phy_position_x = 0
global.swap_module.phy_position_y = 0

if mouse_check_button_pressed(mb_left){
	global.active_module.phy_position_x = 0
	global.active_module.phy_position_y = 0
	
	global.selected_module = instance_place(phy_position_x,phy_position_y,obj_module)
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

			}
		with(global.active_module){
			instance_change(global.swap_module.object_index,true)
			offset_angle = global.swap_module.offset_angle
			phy_rotation = -90
			persistent = false
			}
		}
	}

