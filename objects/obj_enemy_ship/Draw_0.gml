// Place modules

draw_self();

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)

	
//  health bar

if obj_health < old_obj_health
	health_bar_timer = 120
	
if health_bar_timer > 0{
	health_bar_x = phy_position_x
	health_bar_y = phy_position_y - 80
	health_bar_height = 8
	health_bar_width = 36
	
	draw_healthbar(health_bar_x-0.5 * health_bar_width,health_bar_y-0.5 * health_bar_height,health_bar_x+0.5 * health_bar_width,health_bar_y+0.5 * health_bar_height,100 * obj_health/max_health,c_dkgray,c_red,c_red,0,true,true)
	health_bar_timer -= 1
}
old_obj_health = obj_health

// Debug stuff

if global.view_mode == 2{
	draw_set_font(font_big_text)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(phy_position_x,phy_position_y + 80,"credits: " + string(credits))
}