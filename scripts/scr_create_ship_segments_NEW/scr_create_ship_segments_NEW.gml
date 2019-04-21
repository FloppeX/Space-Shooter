var number_of_segments = argument0//irandom(6)+3
var segment_distance = argument1//24
var segment_type = argument2
var temp_x = 0
var temp_y = 0
var temp_segment = noone

//ship_segment[number_of_segments-1] = noone

ship_segment[0] = instance_create_depth(phy_position_x,phy_position_y,-6,segment_type)
number_segments_placed = 1;
var segment_placed = false;

repeat(100)
	if number_segments_placed < number_of_segments{
		segment_placed = false
		for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
			if segment_placed == false {
				var direction_randomizer = irandom(11)
				if direction_randomizer >= 0 and direction_randomizer <= 2{
					temp_x = ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-phy_rotation)
					temp_y = ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-phy_rotation)
					if !instance_place(temp_x,temp_y,segment_type){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship_segment[array_length_1d(ship_segment)].owner = id
						number_segments_placed += 1
						segment_placed = true
						}
					}
				if direction_randomizer >= 3 and direction_randomizer <= 5{
					temp_x = ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-phy_rotation-90)
					temp_y = ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-phy_rotation-90)
					if !instance_place(temp_x,temp_y,segment_type){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship_segment[array_length_1d(ship_segment)].owner = id
						number_segments_placed += 1
						segment_placed = true
						}
					}
				if direction_randomizer >= 6 and direction_randomizer <= 8{
					temp_x = ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-phy_rotation+180)
					temp_y = ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-phy_rotation+180)
					if !instance_place(temp_x,temp_y,segment_type){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship_segment[array_length_1d(ship_segment)].owner = id
						number_segments_placed += 1
						segment_placed = true
						}
					}
				if direction_randomizer >= 9{
					temp_x = ship_segment[i].phy_position_x+lengthdir_x(segment_distance,-phy_rotation+90)
					temp_y = ship_segment[i].phy_position_y+lengthdir_y(segment_distance,-phy_rotation+90)
					if !instance_place(temp_x,temp_y,segment_type){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(temp_x,temp_y,-6,segment_type)
						ship_segment[array_length_1d(ship_segment)].owner = id
						number_segments_placed += 1
						segment_placed = true
						}
					}
						
				if segment_placed == true
					for(var h = 0; h < number_segments_placed; h += 1)
						if ship_segment[h] != noone
							with(ship_segment[h]){			
								temp_x = phy_position_x+lengthdir_x(segment_distance,-owner.phy_rotation-90)
								temp_y = phy_position_y+lengthdir_y(segment_distance,-owner.phy_rotation-90)
								temp_segment = instance_place(temp_x,temp_y,segment_type)
									if temp_segment != noone
										if temp_segment.owner == owner
											ship_segment_left = temp_segment
								temp_x = phy_position_x+lengthdir_x(segment_distance,-owner.phy_rotation)
								temp_y = phy_position_y+lengthdir_y(segment_distance,-owner.phy_rotation)
								temp_segment = instance_place(temp_x,temp_y,segment_type)
									if temp_segment != noone
										if temp_segment.owner == owner
											ship_segment_above = temp_segment
								temp_x = phy_position_x+lengthdir_x(segment_distance,-owner.phy_rotation+90)
								temp_y = phy_position_y+lengthdir_y(segment_distance,-owner.phy_rotation+90)
								temp_segment = instance_place(temp_x,temp_y,segment_type)
									if temp_segment != noone
										if temp_segment.owner == owner
											ship_segment_right = temp_segment
								temp_x = phy_position_x+lengthdir_x(segment_distance,-owner.phy_rotation+180)
								temp_y = phy_position_y+lengthdir_y(segment_distance,-owner.phy_rotation+180)
								temp_segment = instance_place(temp_x,temp_y,segment_type)
									if temp_segment != noone
										if temp_segment.owner == owner
											ship_segment_below = temp_segment			
								}
			}
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
//	

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	ship_segment[i].joint = physics_joint_weld_create(id, ship_segment[i], ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 10, 10,false);
	
