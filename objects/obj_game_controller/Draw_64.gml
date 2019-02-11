
if global.view_mode == 2{

	draw_set_font(global.font_big_text)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text(2000,1000,"TEST")

	draw_set_font(global.font_big_text)
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_text(860,80,"FPS: " + string(fps))
	draw_text(860,120,"Real FPS: " + string(fps_real))
	draw_text(860,160,"Ships: " + string(instance_number(obj_enemy_ship)))
	draw_text(860,200,"Total instances: " + string(instance_number(all)))
	if scr_timer(60)
		draw_text(860,240,"BEEP")
	draw_text(860,280,"Viewport width: " + string(view_get_wport(view_current)))
	draw_text(860,320,"Viewport height: " + string(view_get_hport(view_current)))
	draw_text(860,360,"zoom: " + string(global.camera.zoom))
	draw_text(860,400,"total_kills: " + string(global.total_kills))
	draw_text(860,440,"total_bullets: " + string(global.total_bullets))
	draw_text(860,480,"total_credits: " + string(global.total_credits))
	//for(var i = 0; i < array_length_1d(text) ; i+=1;)
	//	draw_text(860,400+i*40,text[i])
}