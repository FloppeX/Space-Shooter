// Move view object
/*
with(obj_view_object){
	phy_position_x = other.phy_com_x
	phy_position_y = other.phy_com_y
	phy_speed_x = other.phy_speed_x
	phy_speed_y = other.phy_speed_y
	}
*/
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
					if module.baseplate_sprite != noone
						draw_sprite_ext(module.baseplate_sprite,-1,x+p,y+q,other.draw_scale,other.draw_scale,-module.phy_rotation,c_white,other.alpha)
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
