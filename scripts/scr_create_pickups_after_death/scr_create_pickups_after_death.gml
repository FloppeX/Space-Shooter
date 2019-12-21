// Create credits after an enemy dies

var pickup_object_type = argument0
var number = argument1

for(var i = 0; i < number; i+=1;){
	var tempdir = random(360) //+ i * temp_angle_offset
	var tempdist = random(20) + 20
	pickup_object = instance_create_depth(x,y,-10,pickup_object_type);
	pickup_object.phy_position_x = phy_position_x+lengthdir_x(tempdist,tempdir)
	pickup_object.phy_position_y = phy_position_y+lengthdir_y(tempdist,tempdir)
	pickup_object.phy_speed_x = phy_speed_x
	pickup_object.phy_speed_y = phy_speed_y
	}
	