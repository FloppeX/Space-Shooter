if global.view_mode == 2
	draw_text(x,y+100,phy_speed)

// Update module positions

for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		x = other.phy_position_x + lengthdir_x(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
		y = other.phy_position_y + lengthdir_y(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
		if module != noone
				module.phy_rotation = owner.phy_rotation + module.offset_angle + module.rotation_add
		}

for (var p = -global.play_area_width; p <= global.play_area_width; p += global.play_area_width)
	for (var q = -global.play_area_height; q <= global.play_area_height; q+= global.play_area_height){
		draw_sprite_ext(sprite_index,-1,phy_position_x+p,phy_position_y+q,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
		for(var i = 0; i < array_length_1d(module_holders); i+=1;){
			with(module_holders[i]){
				draw_sprite_ext(sprite_index,image_index,x+p,y+q,other.draw_scale,other.draw_scale,rotation,c_white,other.alpha)	
				if module != noone{
					draw_sprite_ext(module.sprite_index,module.image_index,x+p,y+q,other.draw_scale,other.draw_scale,-module.phy_rotation,c_white,other.alpha)
					}
				}
			}
	}
	
for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	// Check if the module is activated
	with (module_holders[i]){
		if owner.gamepad_button[activation_button] == true
				activated = true
		else activated = false
	
	// Make the module holder persistent
	
	persistent = true
	
		if module != noone{
			module.visible = false
			module.persistent = true
			}
	}
	}
