var temp_segment = ship_segment[0]
var temp_module = scr_create_random_starting_gun()
temp_module.offset_angle = 0
temp_module.placement_req_above = noone
temp_module.placement_req_left = 1
temp_module.placement_req_right = 1
temp_module.placement_req_below = 1
var temp_distance = 1000

// TEST
//with(temp_module)
//	scr_add_modifier_new(scr_module_modifier_decreasing_damage,1,"decreasing damage",noone,noone);
//

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone
		if 	abs(phy_position_y - ship_segment[i].phy_position_y) < temp_distance{
			temp_distance = abs(phy_position_y - ship_segment[i].phy_position_y)
			temp_segment = ship_segment[i]
			}
			
temp_segment.module = temp_module
		
