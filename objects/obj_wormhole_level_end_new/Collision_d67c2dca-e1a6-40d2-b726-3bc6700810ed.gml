if done_warping
	exit

fake_warping_ship = instance_create_depth(other.phy_position_x,other.phy_position_y,-10,obj_wormhole_traveller_level_end_ship)
fake_warping_ship.phy_rotation = other.phy_rotation
fake_warping_ship.sprite_index = other.sprite_index

		fake_warping_ship.draw_scale = 1
		for(var i = 0; i < array_length_1d(other.ship_segment); i+=1;){
			
			if scr_exists(other.ship_segment[i].module){
				fake_warping_ship.modules[i,0] = other.ship_segment[i].module.sprite_index
				fake_warping_ship.modules[i,3] = other.ship_segment[i].module.offset_angle
			}
			else{
				fake_warping_ship.modules[i,0] = spr_segment
				fake_warping_ship.modules[i,3] = 0
			}
			fake_warping_ship.modules[i,1] = other.ship_segment[i].placement_angle
			fake_warping_ship.modules[i,2] = other.ship_segment[i].placement_distance
	
			if other.ship_segment[i].ship_segment_right != noone
				fake_warping_ship.modules[i,4] = 1
			else other.modules[i,4] = 0
			if other.ship_segment[i].ship_segment_below != noone
				fake_warping_ship.modules[i,5] = 1
			else fake_warping_ship.modules[i,5] = 0
		}
		


for(var i = 0; i < array_length_1d(other.ship_segment); i+=1;){
	if scr_exists(other.ship_segment[i].module)
		with(other.ship_segment[i].module)
			instance_destroy()
		with(other.ship_segment[i])
			instance_destroy()
		}
with(other)
	instance_destroy()