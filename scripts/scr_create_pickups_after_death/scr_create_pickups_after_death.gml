// Create credits after an enemy dies

var temp_angle_offset = 360/pickup_objects
for(var i = 0; i < pickup_objects; i+=1;){
	tempdir = random(360) //+ i * temp_angle_offset
	tempdist = random(30) + 30
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
	