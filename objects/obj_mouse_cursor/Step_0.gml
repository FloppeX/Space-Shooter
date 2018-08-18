x = mouse_x
y = mouse_y

bullet_spread  =30
bullet_speed_randomness = 1
bullet_speed = 9

if mouse_check_button_pressed(mb_left){
	boom = instance_create_layer(x,y,layer_get_id("instance_layer"),obj_explosion);
	boom.radius = 200
}

if mouse_check_button_pressed(mb_right){
	var i = irandom(2)
	switch(i){
		case 0: instance_create_layer(x,y,layer_get_id("instance_layer"),obj_pickup_credit); break;
		case 1: instance_create_layer(x,y,layer_get_id("instance_layer"),obj_pickup_health); break;
		case 2: instance_create_layer(x,y,layer_get_id("instance_layer"),obj_pickup_particles); break;
	}
}