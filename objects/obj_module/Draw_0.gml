draw_sprite_ext(sprite_index,-1,mirror_x,mirror_y,1,1,-phy_rotation,c_white,1)
draw_sprite_ext(sprite_index,-1,x,mirror_y,1,1,-phy_rotation,c_white,1)
draw_sprite_ext(sprite_index,-1,mirror_x,y,1,1,-phy_rotation,c_white,1)
draw_self()
/*
for(var i = 0; i < array_length_1d(description_lines); i+=1;)
			draw_text(phy_position_x,phy_position_y+20*i,description_lines[i])