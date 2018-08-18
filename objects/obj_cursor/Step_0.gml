/*x = mouse_x
y = mouse_y
*/

gamepad_set_axis_deadzone(0, 0.1);
	left_stick_value = sqrt(power(gamepad_axis_value(0,gp_axislh),2) + power(gamepad_axis_value(0,gp_axislv),2))
	if left_stick_value > 0.2 {//abs(gamepad_axis_value(0,gp_axislh)) > 0.2 or abs(gamepad_axis_value(0,gp_axislv)) > 0.2{
		x += 2.5 * gamepad_axis_value(0,gp_axislh)
		y += 2.5 * gamepad_axis_value(0,gp_axislv)
		}
	gamepad_set_axis_deadzone(0, 0);

//

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1){
	selected_module_holder = instance_place(x,y,obj_module_holder)
	if selected_module_holder != noone {
		if obj_player.credits >= selected_module_holder.module_cost{
				// Delete the modules joint
				if scr_exists(selected_module_holder.module)
					if selected_module_holder.module.joint != noone{
						physics_joint_delete(selected_module_holder.module.joint)
						selected_module_holder.module.joint = noone
						}
					
				swap_module = selected_module_holder.module
				selected_module_holder.module = active_module
				if selected_module_holder.module != noone 
					with(selected_module_holder.module){
						owner = other.selected_module_holder.owner
						module_holder = other.selected_module_holder
						other.selected_module_holder.module = id
						phy_position_x = other.selected_module_holder.x
						phy_position_y = other.selected_module_holder.y
						placement_offset_angle = other.selected_module_holder.placement_offset_angle
						placement_offset_distance = other.selected_module_holder.placement_offset_distance
						joint = physics_joint_revolute_create(module_holder.owner, id,phy_position_x,phy_position_y,0, 360, 0, 10,3,1,0);
						visible = true
						persistent = true
						}
	
				active_module = swap_module
				if active_module != noone{
					if active_module.joint != noone{
						physics_joint_delete(active_module.joint)
						active_module.joint = noone
						}
						
					// Deduct the cost
					obj_player.credits -= selected_module_holder.module_cost
					audio_play_sound_on(obj_shop.shop_audio_emitter,snd_purchase,0,1)
					}
				}
		else 
			audio_play_sound_on(obj_shop.shop_audio_emitter,snd_shop_error_1,0,1)
		}
	}


if swap_module != noone{
	swap_module.visible = true
	swap_module.phy_position_x = x 
	swap_module.phy_position_y = y
	swap_module.phy_rotation = -90 -swap_module.offset_angle
	}
	
//

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1){
	pressed_button = instance_place(x,y,obj_shop_button)
	if pressed_button != noone
		pressed_button.activated = true
	}
