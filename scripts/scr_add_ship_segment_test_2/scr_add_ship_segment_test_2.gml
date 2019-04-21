// DOES NOT WORK PROPERLY
// Ship has to be at rotation 0...

var ship = argument0
var segment_distance = argument1
var segment_type = argument2
var temp_x = 0
var temp_y = 0



// Update neighbors


for(var h = 0; h < array_length_1d(ship.ship_segment); h += 1){
	temp_x = ship.ship_segment[h].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation+90)
	temp_y = ship.ship_segment[h].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation+90)
	temp_segment = instance_place(temp_x,temp_y,segment_type)
		if temp_segment != noone
			if temp_segment.owner == ship.ship_segment[h].owner
				ship.ship_segment[h].ship_segment_left = temp_segment
	temp_x = ship.ship_segment[h].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation)
	temp_y = ship.ship_segment[h].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation)
	temp_segment = instance_place(temp_x,temp_y,segment_type)
		if temp_segment != noone
			if temp_segment.owner == ship.ship_segment[h].owner
				ship.ship_segment[h].ship_segment_above = temp_segment
	temp_x = ship.ship_segment[h].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation-90)
	temp_y = ship.ship_segment[h].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation-90)
	temp_segment = instance_place(temp_x,temp_y,segment_type)
		if temp_segment != noone
			if temp_segment.owner == ship.ship_segment[h].owner
				ship.ship_segment[h].ship_segment_right = temp_segment
	temp_x = ship.ship_segment[h].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation+180)
	temp_y = ship.ship_segment[h].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation+180)
	temp_segment = instance_place(temp_x,temp_y,segment_type)
		if temp_segment != noone
			if temp_segment.owner == ship.ship_segment[h].owner
				ship.ship_segment[h].ship_segment_below = temp_segment
	}