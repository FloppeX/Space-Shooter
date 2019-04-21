//draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,draw_scale,draw_scale,-phy_rotation,color,alpha)

// First draw all the bars, then the segments and modules

for(var i = 0; i < array_height_2d(modules); i+=1;){
				temp_x = phy_position_x + lengthdir_x(draw_scale * modules[i,3],-phy_rotation + modules[i,2])
				temp_y = phy_position_y + lengthdir_y(draw_scale * modules[i,3],-phy_rotation + modules[i,2])
				temp_rot = -phy_rotation + modules[i,4]
				if modules[i,5] == 1
					draw_sprite_ext(spr_crossbar,-1,temp_x,temp_y,draw_scale,draw_scale,-phy_rotation-90,c_white,alpha)	
				if modules[i,6] == 1
					draw_sprite_ext(spr_crossbar,-1,temp_x,temp_y,draw_scale,draw_scale,-phy_rotation+180,c_white,alpha)	
				}
for(var i = 0; i < array_height_2d(modules); i+=1;){
				temp_x = phy_position_x + lengthdir_x(draw_scale * modules[i,3],-phy_rotation + modules[i,2])
				temp_y = phy_position_y + lengthdir_y(draw_scale * modules[i,3],-phy_rotation + modules[i,2])
				temp_rot = -phy_rotation + modules[i,4]
				draw_sprite_ext(modules[i,0],-1,temp_x,temp_y,draw_scale,draw_scale,temp_rot,c_white,alpha)
				}				
			