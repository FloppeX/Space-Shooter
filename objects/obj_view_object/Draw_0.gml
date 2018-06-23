/*
// Draw black borders

if global.view_mode == 1{
draw_set_color(c_black)
draw_rectangle(global.wrap_border_left-3000,global.wrap_border_top-1000,global.wrap_border_left,global.wrap_border_bottom+1000,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_left-3000,global.wrap_border_top-1000,global.wrap_border_right+3000,global.wrap_border_top,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_right,global.wrap_border_top-1000,global.wrap_border_right+3000,global.wrap_border_bottom+1000,0)

draw_set_color(c_black)
draw_rectangle(global.wrap_border_left-3000,global.wrap_border_bottom,global.wrap_border_right+3000,global.wrap_border_bottom+1000,0)
}
