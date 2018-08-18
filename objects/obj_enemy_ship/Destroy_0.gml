// Create credits

temp_distance = 48
temp_speed_modifier = 0.4
for(i = 0; i <= pickup_objects; i += 1){
	var h = irandom(5)
	if h <= 3
		pickup_object = instance_create_depth(0,0,-10,obj_pickup_credit);
	if h == 4
		pickup_object = instance_create_depth(0,0,-10,obj_pickup_health);
	if h == 5
		pickup_object = instance_create_depth(0,0,-10,obj_pickup_particles);

	pickup_object.phy_position_x = phy_position_x+irandom(temp_distance)-0.5*temp_distance
	pickup_object.phy_position_y = phy_position_y+irandom(temp_distance)-0.5*temp_distance
	pickup_object.phy_speed_x = phy_speed_x * (random(temp_speed_modifier)-0.5 * temp_speed_modifier)
	pickup_object.phy_speed_y = phy_speed_y * (random(temp_speed_modifier)-0.5 * temp_speed_modifier)
	}
	
// destroy modules and module holders
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		if module != noone
			with(module)
				instance_destroy()
		instance_destroy()
		}