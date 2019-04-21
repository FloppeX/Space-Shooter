//

draw_self();

// Show where module can be placed


if scr_exists(swap_module){
	with(obj_player)
		for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
			if scr_check_module_placement(other.swap_module,ship_segment[i])
				draw_sprite(spr_module_holder_green,-1,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			else 
				draw_sprite(spr_module_holder_red,-1,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
		}
	}


// UI


draw_set_font(global.font_small_text)
draw_set_color(c_white)
module_under_cursor = instance_place(x,y,obj_module)
if module_under_cursor != noone
	{
		var number_of_modifiers = array_height_2d(module_under_cursor.modifiers)
		var tmp_box_width = 180
		var tmp_box_height = 8 + 18 * (number_of_modifiers +1)
		if object_is_ancestor(module_under_cursor.object_index, obj_module_gun)
			tmp_box_height += 4 * 18
		var tmp_offset_x = 60
		var tmp_offset_y = -0.5 * tmp_box_height
		draw_set_color(c_black)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,0)
		draw_set_color(c_white)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,1)
		draw_set_font(global.font_big_text)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		draw_text_ext_transformed(x+tmp_offset_x+5,y+tmp_offset_y+5,module_under_cursor.module_name,0,800,0.3,0.3,0)
		for(var i = 0; i < array_height_2d(module_under_cursor.modifiers); i+=1;)
			if module_under_cursor.modifiers[i,2] != noone{
				draw_text_ext_transformed(x+tmp_offset_x+5,y+tmp_offset_y+25+20*i,module_under_cursor.modifiers[i,2],0,800,0.3,0.3,0)
				draw_set_halign(fa_right)
				draw_text_ext_transformed(x+tmp_offset_x + tmp_box_width -5,y+tmp_offset_y+25+20*i,module_under_cursor.modifiers[i,3],0,800,0.3,0.3,0)
				draw_set_halign(fa_left)
				}
		if object_is_ancestor(module_under_cursor.object_index, obj_module_gun){
			draw_text_ext_transformed(x+tmp_offset_x+5,y-20+tmp_offset_y+25+20*array_height_2d(module_under_cursor.modifiers),"Damage: " + string(module_under_cursor.bullet_damage),0,800,0.3,0.3,0)
			draw_text_ext_transformed(x+tmp_offset_x+5,y-20+tmp_offset_y+45+20*array_height_2d(module_under_cursor.modifiers),"Range: " + string(module_under_cursor.bullet_range),0,800,0.3,0.3,0)
			draw_text_ext_transformed(x+tmp_offset_x+5,y-20+tmp_offset_y+65+20*array_height_2d(module_under_cursor.modifiers),"Rate of fire: " + string(module_under_cursor.bullet_interval),0,800,0.3,0.3,0)
			draw_text_ext_transformed(x+tmp_offset_x+5,y-20+tmp_offset_y+85+20*array_height_2d(module_under_cursor.modifiers),"Recoil: " + string(module_under_cursor.recoil_force),0,800,0.3,0.3,0)
			}
		draw_set_halign(fa_right)
		if module_under_cursor.cost > 0
			draw_text_ext_transformed(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Cost: " + string(module_under_cursor.cost),0,800,0.3,0.3,0)
		else draw_text_ext_transformed_color(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Owned",0,800,0.3,0.3,0,c_lime,c_lime,c_lime,c_lime,1)
		draw_set_halign(fa_left)
		}
		
button_under_cursor = instance_place(x,y,obj_shop_button)
if button_under_cursor != noone
	{

		var tmp_box_width = 180
		var tmp_box_height = 8 + 18 * array_length_1d(button_under_cursor.description_lines)
		var tmp_offset_x = 60
		var tmp_offset_y = -0.5 * tmp_box_height
		draw_set_color(c_black)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,0)
		draw_set_color(c_white)
		draw_rectangle(x+tmp_offset_x,y+tmp_offset_y,x+tmp_offset_x + tmp_box_width,y+tmp_offset_y+tmp_box_height,1)
		draw_set_font(global.font_big_text)
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		for(var i = 0; i < array_length_1d(button_under_cursor.description_lines); i+=1;)
			draw_text_ext_transformed(x+tmp_offset_x+5,y+tmp_offset_y+5+20*i,button_under_cursor.description_lines[i],0,800,0.3,0.3,0)
		draw_set_halign(fa_right)
		if button_under_cursor.cost > 0
			draw_text_ext_transformed(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Cost: " + string(button_under_cursor.cost),0,800,0.3,0.3,0)
		else draw_text_ext_transformed_color(x+tmp_offset_x+tmp_box_width-5,y+tmp_offset_y+5,"Free",0,800,0.3,0.3,0,c_lime,c_lime,c_lime,c_lime,1)
		draw_set_halign(fa_left)
		}
		
if selected_module != noone{
	draw_circle_color(selected_module.phy_position_x,selected_module.phy_position_y,40,c_red,c_red,1)
}