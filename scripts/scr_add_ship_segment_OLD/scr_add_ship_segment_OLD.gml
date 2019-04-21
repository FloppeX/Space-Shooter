// DOES NOT WORK PROPERLY
// Ship has to be at rotation 0...

var ship = argument0
var number_of_segments_to_place = argument1
var segment_distance = argument2
var segment_type = argument3
var temp_x = 0
var temp_y = 0

var number_segments_placed = 0;
var segment_placed = false;

var number_of_segments = array_length_1d(ship.ship_segment);

repeat(100)
	if number_segments_placed < number_of_segments_to_place{
		segment_placed = false
		for(var i = 0; i < number_of_segments; i+=1;)
			if segment_placed == false {
				var direction_randomizer = irandom(11)
				if direction_randomizer >= 0 and direction_randomizer <= 3{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						number_segments_placed += 1
						number_of_segments += 1
						segment_placed = true
						}
					}
				if direction_randomizer >= 4 and direction_randomizer <= 5{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation-90)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation-90)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						number_segments_placed += 1
						number_of_segments += 1
						segment_placed = true
						}
					}
				if direction_randomizer >= 6 and direction_randomizer <= 7{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation+90)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation+90)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						number_segments_placed += 1
						number_of_segments += 1
						segment_placed = true
						}
					}
				if direction_randomizer >= 8 and direction_randomizer <= 11{
					temp_x = ship.ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-ship.phy_rotation+180)
					temp_y = ship.ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-ship.phy_rotation+180)
					if !instance_place(temp_x,temp_y,segment_type){
						new_segment = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship.ship_segment[number_of_segments] = new_segment
						number_segments_placed += 1
						number_of_segments += 1
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
					
				if segment_placed == true
					for(var h = 0; h < number_segments_placed; h += 1)
						if ship.ship_segment[h] != noone
							{//with(ship.ship_segment[h]){
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
			}
	}
			

// Update position = average of all segment positions

var x_total = 0
var y_total = 0;
for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
	x_total += ship.ship_segment[i].phy_position_x
	y_total += ship.ship_segment[i].phy_position_y
	}
ship.phy_position_x = x_total / array_length_1d(ship.ship_segment)
ship.phy_position_y = y_total / array_length_1d(ship.ship_segment)
//	

for(var i = 0; i < array_length_1d(ship.ship_segment); i+=1;){
	if ship.ship_segment[i].joint != noone
		physics_joint_delete(ship.ship_segment[i].joint)
	ship.ship_segment[i].joint = physics_joint_weld_create(id, ship.ship_segment[i], ship.ship_segment[i].phy_position_x,ship.ship_segment[i].phy_position_y,0, 20, 20,false);
	}
