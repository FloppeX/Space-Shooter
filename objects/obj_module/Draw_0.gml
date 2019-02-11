
if owner.phy_active = false
	phy_active = false
else
	phy_active = true
	
if owner.visible = false
	visible = false
else
	visible = true
		

if visible
	for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
		for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
			draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)

if global.view_mode == 2{
	draw_set_font(global.font_small_text)
	draw_text(phy_position_x,phy_position_y +70,"placement above: " + string(placement_req_above))
	draw_text(phy_position_x,phy_position_y +90,"placement right: " + string(placement_req_right))
	draw_text(phy_position_x,phy_position_y +110,"placement below: " + string(placement_req_below))
	draw_text(phy_position_x,phy_position_y +130,"placement left: " + string(placement_req_left))
	}