event_inherited();

draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,1,1,-phy_rotation,c_white,1);
/*
if global.view_mode == 2{
	target_dir = scr_rocket_find_target_direction_in_arc(obj_asteroid,-phy_rotation,90)
	draw_line_width(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(400,target_dir),phy_position_y+lengthdir_y(400,target_dir),5)
	}
	
//draw_text(phy_position_x-10,phy_position_y+20,target)