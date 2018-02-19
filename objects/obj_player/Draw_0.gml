/*

// Find module positions
ship_modules[0].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 50,-phy_rotation);
ship_modules[0].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 50,-phy_rotation);
ship_modules[1].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 35,-phy_rotation+45);
ship_modules[1].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 35,-phy_rotation+45);
ship_modules[2].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 25,-phy_rotation);
ship_modules[2].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 25,-phy_rotation);
ship_modules[3].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 35,-phy_rotation-45);
ship_modules[3].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 35,-phy_rotation-45);
ship_modules[4].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 25,-phy_rotation+90);
ship_modules[4].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 25,-phy_rotation+90);
ship_modules[5].phy_position_x = phy_position_x
ship_modules[5].phy_position_y = phy_position_y
ship_modules[6].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 25,-phy_rotation-90);
ship_modules[6].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 25,-phy_rotation-90);
ship_modules[7].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 35,-phy_rotation+135);
ship_modules[7].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 35,-phy_rotation+135);
ship_modules[8].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 25,-phy_rotation+180);
ship_modules[8].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 25,-phy_rotation+180);
ship_modules[9].phy_position_x = phy_position_x + lengthdir_x(draw_scale * 35,-phy_rotation-135);
ship_modules[9].phy_position_y = phy_position_y + lengthdir_y(draw_scale * 35,-phy_rotation-135);

for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	ship_modules[i].phy_rotation = phy_rotation + ship_modules[i].offset_angle + ship_modules[i].rotation_add
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
				//x = other.phy_position_x + lengthdir_x(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
				//y = other.phy_position_y + lengthdir_y(other.draw_scale * placement_offset_distance,-other.phy_rotation+placement_offset_angle);
				draw_sprite_ext(sprite_index,image_index,x+p,y+q,other.draw_scale,other.draw_scale,rotation,c_white,other.alpha)	
				if module != noone{
					//module.phy_rotation = owner.phy_rotation + module.offset_angle + module.rotation_add
					draw_sprite_ext(module.sprite_index,module.image_index,x+p,y+q,other.draw_scale,other.draw_scale,-module.phy_rotation,c_white,other.alpha)
					}
				}
			}
	}
	
// Draw ship and modules
/*
draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	draw_sprite_ext(ship_modules[i].sprite_index,ship_modules[i].image_index,ship_modules[i].phy_position_x,ship_modules[i].phy_position_y,draw_scale,draw_scale,-ship_modules[i].phy_rotation,c_white,alpha)
*/
// TEST! Draw module descriptions...
/*
if global.view_mode == 2{
	draw_set_font(font_test_text)
	draw_set_color(c_white)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
		for(var h = 0; h < array_length_1d(ship_modules[i].description_lines); h+=1;)
			draw_text(ship_modules[i].phy_position_x,ship_modules[i].phy_position_y+20*h,ship_modules[i].description_lines[h])
}
*/
// Draw sprite at mirror_positions
/*
if phy_position_x > room_width - 1.1 * global.wrap_margin_player{
	draw_sprite_ext(sprite_index,-1,phy_position_x - global.play_area_width,phy_position_y,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	draw_sprite_ext(ship_modules[i].sprite_index,ship_modules[i].image_index,ship_modules[i].phy_position_x-global.play_area_width,ship_modules[i].phy_position_y,draw_scale,draw_scale,-(ship_modules[i].phy_rotation),c_white,alpha)
	}
if phy_position_x < 1.1 * global.wrap_margin_player{
	draw_sprite_ext(sprite_index,-1,phy_position_x + global.play_area_width,phy_position_y,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	draw_sprite_ext(ship_modules[i].sprite_index,ship_modules[i].image_index,ship_modules[i].phy_position_x+global.play_area_width,ship_modules[i].phy_position_y,draw_scale,draw_scale,-(ship_modules[i].phy_rotation),c_white,alpha)
	}
if phy_position_y > 0.5 * room_height - 1.1 * global.wrap_margin_player{
	draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y - global.play_area_height,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	draw_sprite_ext(ship_modules[i].sprite_index,ship_modules[i].image_index,ship_modules[i].phy_position_x,ship_modules[i].phy_position_y - global.play_area_height,draw_scale,draw_scale,-(ship_modules[i].phy_rotation),c_white,alpha)
	}
if phy_position_y < 1.1 * global.wrap_margin_player{
	draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y + global.play_area_height,draw_scale,draw_scale,-phy_rotation,c_white,alpha)
	for(var i = 0; i < array_length_1d(ship_modules); i+=1;)
	draw_sprite_ext(ship_modules[i].sprite_index,ship_modules[i].image_index,ship_modules[i].phy_position_x,ship_modules[i].phy_position_y + global.play_area_height,draw_scale,draw_scale,-(ship_modules[i].phy_rotation),c_white,alpha)
	}
*/
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
