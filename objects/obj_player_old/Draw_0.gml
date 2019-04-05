// Draw at this and other positions

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
		/*	
for(var i = 0; i < array_height_2d(module_holders); i+=1;)
		if scr_exists(modules[i,0]){
			modules[i,0].phy_position_x = phy_position_x + lengthdir_x(modules[i,2],-phy_rotation + modules[i,1])
			modules[i,0].phy_position_y = phy_position_y + lengthdir_y(modules[i,2],-phy_rotation + modules[i,1])
			modules[i,0].phy_rotation = phy_rotation + modules[i,3]
			}
*/