
temp_alpha = 0.6
gpu_set_blendmode(bm_add)
draw_sprite_ext(glow_sprite,image_index,phy_position_x,phy_position_y,image_xscale,image_yscale,-phy_rotation,color,image_alpha*temp_alpha)
gpu_set_blendmode(bm_normal)
draw_sprite_ext(sprite_index,-1,phy_position_x+30,phy_position_y+30,0.6,0.6,-phy_rotation,c_black,0.5)
draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,1,1,-phy_rotation,color,1);