/*x = mouse_x
y = mouse_y
*/

gamepad_set_axis_deadzone(0, 0.1);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if left_stick_value > 0.2 {//abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2{
		x += 2*gamepad_axis_value(0,gp_axislh)
		y += 2*gamepad_axis_value(0,gp_axislv)
		}
	gamepad_set_axis_deadzone(0, 0);

//

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1){
	selected_module_holder = instance_place(x,y,obj_module_holder)
	if selected_module_holder != noone {
		swap_module = selected_module_holder.module
		selected_module_holder.module = active_module
		if selected_module_holder.module != noone {
			selected_module_holder.module.visible = true
			selected_module_holder.module.persistent = true
			}
		active_module = swap_module

		}
	}

if swap_module != noone{
	swap_module.visible = true
	swap_module.phy_position_x = x 
	swap_module.phy_position_y = y
	}
	
//

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1){
	pressed_button = instance_place(x,y,obj_shop_button)
	if pressed_button != noone
		pressed_button.activated = true
	}
