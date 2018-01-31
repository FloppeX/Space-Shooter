/*
temp_alpha = 0.6
gpu_set_blendmode(bm_add)
draw_sprite_ext(glow_sprite,image_index,phy_position_x,phy_position_y,image_xscale,image_yscale,-phy_rotation,color,image_alpha*temp_alpha)
gpu_set_blendmode(bm_normal)
*/
//draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,draw_scale,draw_scale,-phy_rotation,color,1);
/*
for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	draw_text(x,y+20+20*i,modifiers[i])//asset_get_index(modifiers[i]
	

draw_text(x,y+20,phy_mass)
draw_text(x,y+40,phy_inertia)