draw_self();
for(var i = 0; i < number_of_items; i+=1;){
	draw_sprite(spr_module_holder,-1,module_holders[i].x,module_holders[i].y)
	}
	
// TEST
{
	draw_set_font(font_small_text)
	draw_set_color(c_white)
	draw_text(phy_position_x-200,phy_position_y,"enter_shop: " + string(enter_shop))
	draw_text(phy_position_x-200,phy_position_y + 30,"exit_shop: " + string(exit_shop))
}


	
