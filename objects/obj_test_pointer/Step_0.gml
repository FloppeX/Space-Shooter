x = mouse_x
y = mouse_y

if mouse_check_button_pressed(mb_left){
	//instance_create_depth(x,y,-10,obj_explosion)
	part_system_position(global.part_system_above,x,y)
	part_system_position(global.part_system_below,x,y)
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