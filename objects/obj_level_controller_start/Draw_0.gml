draw_set_color(c_black)
draw_rectangle(-3000,0,global.wrap_border_left,room_height,0)

draw_set_color(c_black)
draw_rectangle(0,0,room_width,global.wrap_border_top,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_right,0,room_width+3000,room_height,0)

draw_set_color(c_black)
draw_rectangle(0,global.wrap_border_bottom,room_width,room_height,0)

// Control view

cam = camera_get_active()

camera_set_view_pos(cam,view_object.phy_position_x -0.5*camera_get_view_width(cam),view_object.phy_position_y-0.5*camera_get_view_height(cam))
