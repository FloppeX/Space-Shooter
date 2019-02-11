draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,draw_scale,draw_scale,-phy_rotation,color,alpha)
for(var i = 0; i < array_height_2d(modules); i+=1;)
			if (modules[i,0]) != noone{
				temp_x = phy_position_x + lengthdir_x(draw_scale * modules[i,3],-phy_rotation + modules[i,2])
				temp_y = phy_position_y + lengthdir_y(draw_scale * modules[i,3],-phy_rotation + modules[i,2])
				temp_rot = -phy_rotation + modules[i,4]
				draw_sprite_ext(modules[i,0],-1,temp_x,temp_y,draw_scale,draw_scale,temp_rot,c_white,alpha)
				}
/*				
draw_set_font(global.font_small_text)
draw_set_color(c_white)
draw_text(phy_position_x,phy_position_y+90,"phy_rotation: " + string(phy_rotation))
draw_text(phy_position_x,phy_position_y+120,"phy_angular_velocity: " + string(phy_angular_velocity))
temp_diff = abs(angle_difference(phy_rotation,-90))
draw_text(phy_position_x,phy_position_y+150,"temp_diff: " + string(temp_diff))