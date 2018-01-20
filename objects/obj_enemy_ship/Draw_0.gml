// scr_draw_vision_cone();
draw_self();

draw_text(x,y+50,object_get_name(target_object))
/*
if global.view_mode == 2{
	draw_circle(phy_position_x+lengthdir_x(100,-phy_rotation),phy_position_y+lengthdir_y(100,-phy_rotation),75,true) 
	draw_circle(phy_position_x+lengthdir_x(100,-phy_rotation),phy_position_y+lengthdir_y(100,-phy_rotation),150,true) 
	}
