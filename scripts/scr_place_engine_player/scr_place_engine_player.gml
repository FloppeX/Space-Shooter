var temp_segment = ship_segment[0]
var temp_module = instance_create_depth(0,0,-10,obj_module_engine_player);
var temp_distance = 1000

for(var i = 0; i < array_length_1d(ship_segment); i+=1;)
	if scr_check_module_placement(temp_module,ship_segment[i]) and ship_segment[i].module == noone
		if 	abs(phy_position_y - ship_segment[i].phy_position_y) < temp_distance{
			temp_distance = abs(phy_position_y - ship_segment[i].phy_position_y)
			temp_segment = ship_segment[i]
			}
			
temp_segment.module = temp_module
		