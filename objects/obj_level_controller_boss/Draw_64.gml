draw_set_font(global.font_bigger_text)
draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_set_color(c_white)
temp_width = 0.5 * display_get_gui_width()
temp_timer = max(0,round(stage_timer/60)) // At least 0...

if enemy_wave_timer <= 240 and stage_timer > 0
	draw_text_ext_transformed(temp_width,140,"ENEMY WAVE INCOMING",0,3200,1,1,0)


if boss_killed_timer <= 0 {
	draw_set_color(c_red)
	if object_exists(obj_wormhole_level_end_new) and !wormhole_end_gone{
		draw_text_ext_transformed(temp_width,60,"GET TO THE WORMHOLE",0,3200,1,1,0)
		temp_timer = max(0,round(wormhole_end_timer/120)) 
		draw_text_ext_transformed(temp_width,140,string(temp_timer),0,3200,1,1,0)
		}
	if wormhole_end_gone == true and instance_number(obj_wormhole_level_end_new) == 0
		draw_text_ext_transformed(temp_width,60,"OH NO! WE ARE DOOMED!",0,3200,1,1,0)
	}