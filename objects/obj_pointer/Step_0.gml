x = mouse_x
y = mouse_y

/*
x = camera_get_view_x(view_camera[0]) + mouse_x
y = camera_get_view_y(view_camera[0]) + mouse_y
*/


/*
var module_under_cursor = instance_place(x,y,obj_module)
if mouse_check_button_pressed(mb_left){
	if module_under_cursor != noone{
		global.temp_module_type = active_module_type
		active_module_type = module_under_cursor.object_index
		with (module_under_cursor)
			instance_change(global.temp_module_type,true)
		}
	}