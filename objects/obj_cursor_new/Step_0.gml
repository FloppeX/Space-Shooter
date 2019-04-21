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
	selected_segment = instance_place(x,y,obj_ship_segment)
	
	
	if scr_exists(selected_segment){
		if obj_player.credits >= selected_segment.module_cost{
			if scr_check_module_placement(cursor_module,selected_segment){
				// Deduct the cost
				if selected_segment.module_cost > 0{
					obj_player.credits -= selected_segment.module_cost
					audio_play_sound_on(obj_shop.shop_audio_emitter,snd_purchase,0,1)
					}
				selected_segment.module_cost = 0
				
				// Delete the modules joint
				segment_module = selected_segment.module
				selected_segment.module = noone
				if scr_exists(segment_module)
					if segment_module.joint != noone{
						physics_joint_delete(segment_module.joint)
						segment_module.joint = noone
						}
					
				// perform swap	
				
				// Move modules to swap modules
				segment_module_swap = segment_module
				cursor_module_swap = cursor_module
				
				// Move swap modules to regular modules
				segment_module = cursor_module_swap
				cursor_module_swap = noone
				if scr_exists(segment_module){
						selected_segment.module = segment_module
						selected_segment.module.owner = selected_segment.owner
						selected_segment.module.phy_position_x = selected_segment.phy_position_x
						selected_segment.module.phy_position_y = selected_segment.phy_position_y
						selected_segment.module.joint = physics_joint_revolute_create(selected_segment, selected_segment.module,selected_segment.module.phy_position_x,selected_segment.module.phy_position_y,0, 360, 0, 30,0,1,0);
						selected_segment.module.visible = true
						selected_segment.module.persistent = true
						}
				segment_module = noone
	
				cursor_module = segment_module_swap
				segment_module_swap = noone
				
				if scr_exists(cursor_module){
					if cursor_module.joint != noone{
						physics_joint_delete(cursor_module.joint)
						cursor_module.joint = noone
						}

					}
				
				
				}
		}
		else 
			audio_play_sound_on(obj_shop.shop_audio_emitter,snd_shop_error_1,0,1)
		}
		selected_segment = noone;
	}

if  scr_exists(cursor_module){
	cursor_module.visible = true
	cursor_module.phy_position_x = x 
	cursor_module.phy_position_y = y
	cursor_module.phy_rotation = -90 -cursor_module.offset_angle
	
	
	}
	
//

if mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(0,gp_face1){
	pressed_button = instance_place(x,y,obj_shop_button)
	if pressed_button != noone
		pressed_button.activated = true
	}
