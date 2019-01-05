if !owner.visible
	exit;

//draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,owner.owner.draw_scale,owner.owner.draw_scale,-phy_rotation,c_white,0.4)
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_orange)
draw_set_font(font_small_text)
draw_text_transformed(phy_position_x+lengthdir_x(40*owner.owner.draw_scale,-phy_rotation),phy_position_y+lengthdir_y(40*owner.owner.draw_scale,-phy_rotation),string(round(obj_health)),owner.owner.draw_scale,owner.owner.draw_scale,-phy_rotation)
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);