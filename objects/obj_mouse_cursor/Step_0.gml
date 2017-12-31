x = mouse_x
y = mouse_y

if mouse_check_button_pressed(mb_left)
	instance_create_depth(x,y,-10,obj_explosion)