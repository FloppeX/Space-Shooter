// Create credits after an enemy dies

for(var i = 0; i < pickup_objects; i+=1;){
	var tempdir = random(360) //+ i * temp_angle_offset
	var tempdist = random(20) + 20
	var h = irandom(5)
		if h <= 3
			pickup_object = instance_create_depth(x,y,-10,obj_pickup_credit);
		if h == 4
			pickup_object = instance_create_depth(x,y,-10,obj_pickup_health);
		if h == 5
			pickup_object = instance_create_depth(x,y,-10,obj_pickup_particles);
	pickup_object.phy_position_x = phy_position_x+lengthdir_x(tempdist,tempdir)
	pickup_object.phy_position_y = phy_position_y+lengthdir_y(tempdist,tempdir)
	pickup_object.phy_speed_x = phy_speed_x
	pickup_object.phy_speed_y = phy_speed_y
	}
	