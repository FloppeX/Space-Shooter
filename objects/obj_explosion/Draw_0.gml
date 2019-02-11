if destruction_timer > 0{
	temp_radius += radius_increase_factor * radius
	temp_radius = clamp(temp_radius,0,radius)
	draw_set_color(c_yellow)
	draw_circle(phy_position_x,phy_position_y,temp_radius,false)

}

