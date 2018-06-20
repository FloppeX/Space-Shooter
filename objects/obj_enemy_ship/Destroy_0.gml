// Create credits

temp_distance = 48
temp_speed_modifier = 0.4
for(i = 0; i <= credits; i += 1){
	credit = instance_create_layer(phy_position_x+irandom(temp_distance)-0.5*temp_distance,phy_position_y+irandom(temp_distance)-0.5*temp_distance,"instance_layer",obj_pickup_credit)
	credit.phy_speed_x = phy_speed_x * (random(temp_speed_modifier)-0.5 * temp_speed_modifier)
	credit.phy_speed_y = phy_speed_y * (random(temp_speed_modifier)-0.5 * temp_speed_modifier)
	}
	
// destroy modules and module holders
for(var i = 0; i < array_length_1d(module_holders); i+=1;)
	with(module_holders[i]){
		if module != noone
			with(module)
				instance_destroy()
		instance_destroy()
		}