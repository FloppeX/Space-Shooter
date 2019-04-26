event_inherited();

// Ship stats

max_health_base = 25
obj_health = 25
max_rotation_speed = 100;
max_speed_base = 5

rotation_force = 200

///
// Segments
var segment_distance = 24
var number_of_segments = global.temp_number_of_segments

scr_create_ship_segments(number_of_segments,segment_distance,obj_ship_segment_enemy)

scr_ship_update_segments(id,segment_distance)

repeat(round(number_of_segments/3))
	scr_place_engine_enemy()
	
var module_placed = false
	var temp_module = instance_create_depth(0,0,-10,obj_module_enemy_cockpit_1);
	repeat(100){
		var i = irandom(array_length_1d(ship_segment)-1)
		if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !module_placed{
			ship_segment[i].module = temp_module
			module_placed = true
			}
		}
	if module_placed == false
		with(temp_module)
			instance_destroy();

repeat(10){
	var module_placed = false	
	repeat(10){
		if module_placed == false{
			var temp_module = scr_create_random_enemy_weapon();
			repeat(10){
				var i = irandom(array_length_1d(ship_segment)-1)
				if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !module_placed{
					ship_segment[i].module = temp_module
					module_placed = true
					}
				}
			if module_placed == false
				with(temp_module)
					instance_destroy();
		}
	}
		
	var module_placed = false	
	repeat(10){
		if module_placed == false{
			var temp_module = scr_create_random_enemy_weapon();
			repeat(10){
				var i = irandom(array_length_1d(ship_segment)-1)
				if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone and !module_placed{
					ship_segment[i].module = temp_module
					module_placed = true
					}
				}
			if module_placed == false
				with(temp_module)
					instance_destroy();
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
	

for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
			ship_segment[i].owner = id
			ship_segment[i].persistent = false
			ship_segment[i].visible = true
			ship_segment[i].placement_angle = point_direction(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			ship_segment[i].placement_distance = point_distance(phy_position_x,phy_position_y,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y)
			if ship_segment[i].module != noone{
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