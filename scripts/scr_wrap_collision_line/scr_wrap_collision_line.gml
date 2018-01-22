// checks collision line taking screen wrap into account

var x1,y1,x2,y2,obj,prec,notme;
x1 = argument0
y1 = argument1
x2 = argument2
y2 = argument3
obj = argument4
prec = argument5
notme = argument6

if collision_line(x1,y1,x2,y2,obj,prec,notme)
return true

if collision_line(x1-global.play_area_width,y1,x2-global.play_area_width,y2,obj,prec,notme)
return true

if collision_line(x1+global.play_area_width,y1,x2+global.play_area_width,y2,obj,prec,notme)
return true

if collision_line(x1,y1-global.play_area_height,x2,y2-global.play_area_height,obj,prec,notme)
return true

if collision_line(x1,y1+global.play_area_height,x2,y2+global.play_area_height,obj,prec,notme)
return true

return false