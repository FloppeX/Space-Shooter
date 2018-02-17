x = mouse_x
y = mouse_y

if mouse_check_button_pressed(mb_left){
	selected_module_holder = instance_place(x,y,obj_module_holder)
	if selected_module_holder != noone {
		swap_module = selected_module_holder.module
		selected_module_holder.module = active_module
		if selected_module_holder.module != noone{
			selected_module_holder.module.visible = true
			selected_module_holder.module.persistent = true
			}
		active_module = swap_module
		}
	//active_module.phy_position_x = 0
	//active_module.phy_position_y = 0
	}

if swap_module != noone{
	swap_module.visible = true
	swap_module.phy_position_x = x 
	swap_module.phy_position_y = y
	}