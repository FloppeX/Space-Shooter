
var ship = argument0
var segment_distance = argument1
var segment_type = argument2
var temp_x = 0
var temp_y = 0
var segment_placed = false;
var number_of_segments = array_length_1d(ship.ship_segment);

// Destroy all segment joints

for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
	physics_joint_delete(ship.ship_segment[i].joint)
	ship.ship_segment[i].joint = noone
	}


// Update position = average of all segment positions
/*
var x_total = 0
var y_total = 0;
for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
	x_total += ship.ship_segment[i].phy_position_x
	y_total += ship.ship_segment[i].phy_position_y
	}
ship.phy_position_x = x_total / array_length_1d(ship.ship_segment)
ship.phy_position_y = y_total / array_length_1d(ship.ship_segment)
*/
//	Make new joints


for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;)
	ship.ship_segment[i].joint = physics_joint_weld_create(ship, ship.ship_segment[i], ship.ship_segment[i].phy_position_x,ship.ship_segment[i].phy_position_y,0, 20, 20,false);
	
