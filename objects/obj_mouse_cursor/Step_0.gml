x = mouse_x
y = mouse_y

if mouse_check_button_pressed(mb_left){
	boom = instance_create_depth(x,y,100,obj_explosion);
	boom.radius = 90
}

if mouse_check_button_pressed(mb_right){
	global.temp_number_of_segments = irandom(3)+3;
	ship = instance_create_depth(x,y,10,obj_enemy_modular_boss);
	ship.phy_rotation = -90
}