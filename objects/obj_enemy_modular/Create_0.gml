event_inherited();

// Ship stats

max_health_base = 25
obj_health = 25
max_rotation_speed = 100;
max_speed_base = 5

///
// Segments

var number_of_segments = global.temp_number_of_segments
scr_create_ship_segments(number_of_segments,24,obj_ship_segment_enemy)

/*
var segment_distance = 24
number_of_segments = irandom(6)+3
//ship_segment[number_of_segments-1] = noone

ship_segment[0] = instance_create_depth(phy_position_x,phy_position_y,-6,obj_ship_segment_enemy)
number_segments_placed = 1;
var segment_placed = false;

repeat(100)
	if number_segments_placed < number_of_segments{
		segment_placed = false
		for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
			if segment_placed == false{
				var direction_randomizer = irandom(11)
				if direction_randomizer >= 0 and direction_randomizer <= 2
					if !instance_place(ship_segment[i].phy_position_x+segment_distance,ship_segment[i].phy_position_y,obj_ship_segment_enemy){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x+segment_distance,ship_segment[i].phy_position_y,-6,obj_ship_segment_enemy)
						number_segments_placed += 1
						segment_placed = true
						}
				if direction_randomizer >= 3 and direction_randomizer <= 5
					if !instance_place(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y-segment_distance,obj_ship_segment_enemy){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y-segment_distance,-6,obj_ship_segment_enemy)
						number_segments_placed += 1
						segment_placed = true
						}
				if direction_randomizer >= 6 and direction_randomizer <= 8
					if !instance_place(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y+segment_distance,obj_ship_segment_enemy){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x,ship_segment[i].phy_position_y+segment_distance,-6,obj_ship_segment_enemy)
						number_segments_placed += 1
						segment_placed = true
						}
				if direction_randomizer >= 9 //and direction_randomizer <= 15
					if !instance_place(ship_segment[i].phy_position_x-segment_distance,ship_segment[i].phy_position_y,obj_ship_segment_enemy){
						ship_segment[array_length_1d(ship_segment)] = instance_create_depth(ship_segment[i].phy_position_x-segment_distance,ship_segment[i].phy_position_y,-6,obj_ship_segment_enemy)
						number_segments_placed += 1
						segment_placed = true
						}
						
				if segment_placed == true
					for(var h = 0; h < number_segments_placed; h += 1)
						if ship_segment[h] != noone
							with(ship_segment[h]){
								temp_segment = instance_place(phy_position_x,phy_position_y-segment_distance,obj_ship_segment_enemy)
									ship_segment_left = temp_segment
								temp_segment = instance_place(phy_position_x+segment_distance,phy_position_y,obj_ship_segment_enemy)
									ship_segment_above = temp_segment
								temp_segment = instance_place(phy_position_x,phy_position_y+segment_distance,obj_ship_segment_enemy)
									ship_segment_right = temp_segment
								temp_segment = instance_place(phy_position_x-segment_distance,phy_position_y,obj_ship_segment_enemy)
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
	*/

repeat(round(number_of_segments/3))
	scr_place_engine_enemy()
	
var segment_placed = false
	temp_module = instance_create_depth(0,0,-10,obj_module_enemy_cockpit_1);
	repeat(100){
		var i = irandom(array_length_1d(ship_segment)-1)
		if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
			ship_segment[i].module = temp_module
			segment_placed = true
			}
		}
		
repeat(10){
	var segment_placed = false
	temp_module = scr_create_random_enemy_weapon();
	repeat(100){
		var i = irandom(array_length_1d(ship_segment)-1)
		if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
			ship_segment[i].module = temp_module
			segment_placed = true
			}
		}
		
	var segment_placed = false
	temp_module = scr_create_random_enemy_device();
	repeat(100){
		var i = irandom(array_length_1d(ship_segment)-1)
		if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
			ship_segment[i].module = temp_module
			segment_placed = true
			}
		}
}
	
	/*
var segment_placed = false
temp_module = instance_create_depth(0,0,-10,obj_module_engine_enemy);
repeat(100){
	var i = irandom(array_length_1d(ship_segment)-1)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !segment_placed{
		ship_segment[i].module = temp_module
		segment_placed = true
		}
	}
	*/
	

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_exists(ship_segment[i]){
			ship_segment[i].owner = id
			ship_segment[i].persistent = false
			ship_segment[i].visible = true
			ship_segment[i].placement_angle = point_direction(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			ship_segment[i].placement_distance = point_distance(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			if scr_exists(ship_segment[i].module){
				ship_segment[i].module.owner = id
				ship_segment[i].module.persistent = false
				ship_segment[i].module.visible = true
				ship_segment[i].module.phy_position_x = ship_segment[i].phy_position_x
				ship_segment[i].module.phy_position_y = ship_segment[i].phy_position_y
				ship_segment[i].module.joint = physics_joint_revolute_create(ship_segment[i], ship_segment[i].module,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 360, 0, 10,0,1,0);
				}
			}


gun_bullet_speed = 8

//Sounds

explosion_sound = snd_explosion_large_02
engine_sound = snd_engine_2