x = mouse_x
y = mouse_y

/*
x = camera_get_view_x(view_camera[0]) + mouse_x
y = camera_get_view_y(view_camera[0]) + mouse_y
*/

if mouse_check_button_pressed(mb_left){
	var module_under_cursor = instance_place(x,y,obj_module)
	if module_under_cursor != noone{
		var temp_module = module_under_cursor
		with (module_under_cursor)
			instance_change(active_module,false)
		active_module = temp_module
		}
	}
	
sprite_index = active_module.sprite_index