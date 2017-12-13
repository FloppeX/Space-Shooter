x = mouse_x
y = mouse_y

if mouse_check_button_pressed(mb_left){
	var target_module = instance_place(x,y,obj_module)
	if target_module != noone{
		with (target_module)
			instance_change(obj_module_empty,false)
		}
	}

// Find mirror positions

if x <= 0.5 * room_width
mirror_x = x + global.play_area_width
if x > 0.5 * room_width
mirror_x = x - global.play_area_width

if y <= 0.5 * room_height
mirror_y = y + global.play_area_height
if y > 0.5 * room_height
mirror_y = y - global.play_area_height