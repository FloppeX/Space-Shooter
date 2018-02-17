x = mouse_x
y = mouse_y

swap_module.visible = true
swap_module.phy_position_x = x 
swap_module.phy_position_y = y

if mouse_check_button_pressed(mb_left){
	selected_module_holder = instance_place(x,y,obj_module_holder)
	if selected_module != noone {
		swap_module = selected_module_holder.module
		selected_module_holder.module = active_module
		active_module = swap_module
		}
	active_module.phy_position_x = 0
	active_module.phy_position_y = 0
	}

