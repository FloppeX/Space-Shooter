var ship = argument0
var segment_distance = argument1

// Delete all joints

for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;)
	with(ship.ship_segment[i]){
		if joint != noone
			physics_joint_delete(joint)
		joint = noone
	}
	
// Move the segments 

for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
	temp_segment = ship.ship_segment[i].ship_segment_left
	if temp_segment != noone{
		temp_segment.phy_position_x = ship.ship_segment[i].phy_position_x + lengthdir_x(segment_distance,-phy_rotation+90)
		temp_segment.phy_position_y = ship.ship_segment[i].phy_position_y + lengthdir_y(segment_distance,-phy_rotation+90)
		}
	temp_segment = ship.ship_segment[i].ship_segment_above
	if temp_segment != noone{
		temp_segment.phy_position_x = ship.ship_segment[i].phy_position_x + lengthdir_x(segment_distance,-phy_rotation)
		temp_segment.phy_position_y = ship.ship_segment[i].phy_position_y + lengthdir_y(segment_distance,-phy_rotation)
		}
	temp_segment = ship.ship_segment[i].ship_segment_right
	if temp_segment != noone{
		temp_segment.phy_position_x = ship.ship_segment[i].phy_position_x + lengthdir_x(segment_distance,-phy_rotation-90)
		temp_segment.phy_position_y = ship.ship_segment[i].phy_position_y + lengthdir_y(segment_distance,-phy_rotation-90)
		}
	temp_segment = ship.ship_segment[i].ship_segment_below
	if temp_segment != noone{
		temp_segment.phy_position_x = ship.ship_segment[i].phy_position_x + lengthdir_x(segment_distance,-phy_rotation+180)
		temp_segment.phy_position_y = ship.ship_segment[i].phy_position_y + lengthdir_y(segment_distance,-phy_rotation+180)
		}
	}
	
// Update position = average of all segment positions

var x_total = 0
var y_total = 0;
for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
	x_total += ship.ship_segment[i].phy_position_x
	y_total += ship.ship_segment[i].phy_position_y
	}
ship.phy_position_x = x_total / array_length_1d(ship_segment)
ship.phy_position_y = y_total / array_length_1d(ship_segment)

// Join segments to ship

for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;)
	ship.ship_segment[i].joint = physics_joint_weld_create(ship.ship_segment[i], ship, ship.ship_segment[i].phy_position_x,ship.ship_segment[i].phy_position_y,0, 10, 12,false);
	
// Update placement angle and distance (for creating fake ships when warping)

for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
		ship.ship_segment[i].placement_angle = ship.phy_rotation + point_direction(ship.phy_position_x,ship.phy_position_y,ship.ship_segment[i].phy_position_x,ship.ship_segment[i].phy_position_y)
		ship.ship_segment[i].placement_distance = point_distance(ship.phy_position_x,ship.phy_position_y,ship.ship_segment[i].phy_position_x,ship.ship_segment[i].phy_position_y)
	}