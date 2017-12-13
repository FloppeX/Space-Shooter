
draw_sprite_ext(sprite_index,-1,phy_position_x+30,phy_position_y+30,0.6,0.6,-phy_rotation,c_black,0.5)
draw_self();

/*
if global.view_mode == 2{
	draw_circle(phy_position_x+lengthdir_x(100,-phy_rotation),phy_position_y+lengthdir_y(100,-phy_rotation),75,true) 
	draw_circle(phy_position_x+lengthdir_x(100,-phy_rotation),phy_position_y+lengthdir_y(100,-phy_rotation),150,true) 
	}
