

// Keep modules from activating

with(obj_player){
	disabled_timer = 30
	add_thrust = 0
	for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
		if scr_exists(ship_segment[i].module)
					ship_segment[i].module.activated = false
	}