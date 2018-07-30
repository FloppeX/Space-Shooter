// Draw at other positions

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height)
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)

for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	// Check if the module is activated
	with (module_holders[i]){
		if owner.gamepad_button[activation_button] == true
				activated = true
		else activated = false
	
	// Make the module holder persistent
	
	persistent = true
	
		if module != noone{
			module.visible = true// false
			module.persistent = true
			module.cost = 0
			}
	}
	}
