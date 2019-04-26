event_inherited();

// First draw all the bars, then the segments and modules

for(var i = 0; i < array_height_2d(modules); i+=1;){
				temp_x = phy_position_x + lengthdir_x(draw_scale * modules[i,2],-phy_rotation + modules[i,1])
				temp_y = phy_position_y + lengthdir_y(draw_scale * modules[i,2],-phy_rotation + modules[i,1])
				temp_rot = -phy_rotation + modules[i,3]
				if modules[i,4] == 1
					draw_sprite_ext(spr_crossbar,-1,temp_x,temp_y,draw_scale,draw_scale,-phy_rotation-90,c_white,alpha)	
				if modules[i,5] == 1
					draw_sprite_ext(spr_crossbar,-1,temp_x,temp_y,draw_scale,draw_scale,-phy_rotation+180,c_white,alpha)	
				}
for(var i = 0; i < array_height_2d(modules); i+=1;){
				temp_x = phy_position_x + lengthdir_x(draw_scale * modules[i,2],-phy_rotation + modules[i,1])
				temp_y = phy_position_y + lengthdir_y(draw_scale * modules[i,2],-phy_rotation + modules[i,1])
				temp_rot = -phy_rotation + modules[i,3]
				draw_sprite_ext(modules[i,0],-1,temp_x,temp_y,draw_scale,draw_scale,temp_rot,c_white,alpha)
				}				
			