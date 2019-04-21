// DOES NOT WORK PROPERLY
// Ship has to be at rotation 0...

var ship = argument0
var segment_distance = argument1
var segment_type = argument2
var temp_x = 0
var temp_y = 0
var segment_placed = false;
var number_of_segments = array_length_1d(ship.ship_segment);


// add a segment

repeat(100)
	if segment_placed == false{
		for(var i = 0; i < number_of_segments; i+=1;)
			if segment_placed == false {
				var direction_randomizer = irandom(11)
				if direction_randomizer >= 0 and direction_randomizer <= 3{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						segment_placed = true
						}
					}
				if direction_randomizer >= 4 and direction_randomizer <= 5{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation-90)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation-90)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						segment_placed = true
						}
					}
				if direction_randomizer >= 6 and direction_randomizer <= 7{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation+90)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation+90)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						segment_placed = true
						}
					}
				if direction_randomizer >= 8 and direction_randomizer <= 11{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation+180)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation+180)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						segment_placed = true
						}
					}
						
				if segment_placed == true
					with(new_segment){
						owner = ship
						persistent = true
						visible = true
						placement_angle = point_direction(ship.phy_position_x,phy_position_y,phy_position_x,phy_position_y)
						placement_distance = point_distance(ship.phy_position_x,phy_position_y,phy_position_x,phy_position_y)	
						}
			}
	}
	
