// Control view
/*
if instance_exists(obj_player)
	with(view_object){
		phy_position_x = obj_player.phy_com_x
		phy_position_y = obj_player.phy_com_y
		phy_speed_x = obj_player.phy_speed_x
		phy_speed_y = obj_player.phy_speed_y
		}
		*/
/*	
cam = camera_get_active()

camera_set_view_pos(cam,view_object.phy_position_x -0.5*camera_get_view_width(cam),view_object.phy_position_y-0.5*camera_get_view_height(cam))

// Screen shake and vibration

if (global.screen_shake_duration > 0){
	camera_x_temp = camera_get_view_x(cam) + choose(random(global.screen_shake_intensity), -random(global.screen_shake_intensity))
	camera_y_temp = camera_get_view_y(cam) + choose(random(global.screen_shake_intensity), -random(global.screen_shake_intensity))
    camera_set_view_pos(cam,camera_x_temp,camera_y_temp)
	gamepad_set_vibration(0,1,1)
	global.screen_shake_duration -= 1
	global.screen_shake_intensity -= 1
	}
else 
	gamepad_set_vibration(0,0,0)	