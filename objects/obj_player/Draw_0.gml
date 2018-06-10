/*draw_set_halign(fa_center);
draw_text(x,y+100,"TEST")
draw_set_halign(fa_left);
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
					draw_sprite_ext(module.sprite_index,module.image_index,x+p,y+q,other.draw_scale,other.draw_scale,-module.phy_rotation,c_white,other.alpha)
					}
				}
			}
	}
	
for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	// Check if the module is activated
	if gamepad_button[module_holders[i].activation_button] == true
			module_holders[i].activated = true
	else module_holders[i].activated = false
	
	// disable visibility of modules and draw them directly, so they dont wiggle around
	with (module_holders[i])
		//visible = false
		if module != noone{
			module.visible = false
			module.persistent = true
		}
	//draw_sprite_ext(ship_modules[i].sprite_index,ship_modules[i].image_index,ship_modules[i].phy_position_x,ship_modules[i].phy_position_y,1,1,-(phy_rotation+ship_modules[i].offset_angle),c_white,alpha)
	/*
	//ship_modules[i].phy_rotation = phy_rotation + ship_modules[i].offset_angle
	ship_modules[i].phy_speed_x = phy_speed_x
	ship_modules[i].phy_speed_y = phy_speed_y
	*/
	}
