for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	with(ship_segment[i]){
		physics_joint_delete(joint)
		joint = noone
	}
	
// Update position = average of all segment positions

var x_total = 0
var y_total = 0;
for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	x_total += ship_segment[i].phy_position_x
	y_total += ship_segment[i].phy_position_y
	}
phy_position_x = x_total / array_length_1d(ship_segment)
phy_position_y = y_total / array_length_1d(ship_segment)