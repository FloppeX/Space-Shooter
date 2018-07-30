// Control view

with(view_object){
	phy_position_x = obj_player.phy_com_x
	phy_position_y = obj_player.phy_com_y
	phy_speed_x = obj_player.phy_speed_x
	phy_speed_y = obj_player.phy_speed_y
	}
/*
cam = camera_get_active()

camera_set_view_pos(cam,view_object.phy_position_x -0.5*camera_get_view_width(cam),view_object.phy_position_y-0.5*camera_get_view_height(cam))
