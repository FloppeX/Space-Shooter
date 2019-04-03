draw_self();
for(var i = 0; i < number_of_items; i+=1;){
	draw_sprite(spr_module_holder,-1,shop_segments[i].x,shop_segments[i].y)
	}
	
if global.view_mode == 2
{
	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(phy_position_x-200,phy_position_y,"enter_shop: " + string(enter_shop))
	draw_text(phy_position_x-200,phy_position_y + 30,"exit_shop: " + string(exit_shop))
}


	
