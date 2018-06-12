draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_orange)
draw_set_font(font_damage_number)
draw_text_transformed(phy_position_x+lengthdir_x(40,-phy_rotation),phy_position_y+lengthdir_y(40,-phy_rotation),string(round(obj_health)),1,1,-phy_rotation)
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);