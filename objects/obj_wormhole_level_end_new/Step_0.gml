event_inherited();

warping_ship = instance_place(phy_position_x,phy_position_y,obj_player)
if scr_exists(warping_ship) and !done_warping{
	with(warping_ship){
		disabled_timer = 10
		phy_active = false
		visible = false
		for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
			ship_segment[i].phy_active = false
			ship_segment[i].visible = false
			if scr_exists(ship_segment[i].module){
				ship_segment[i].module.phy_active = false
				ship_segment[i].module.visible = false
				}
			}
		}
		
	// Create a fake ship object that will spin and shrink
	if !scr_exists(fake_warping_ship){
		fake_warping_ship = instance_create_depth(warping_ship.phy_position_x,warping_ship.phy_position_y,-10,obj_wormhole_traveller_level_end_ship)
		fake_warping_ship.phy_rotation = warping_ship.phy_rotation
		fake_warping_ship.sprite_index = warping_ship.sprite_index
		fake_warping_ship.draw_scale = warping_ship.draw_scale
		for(var i = 0; i < array_length_1d(warping_ship.ship_segment); i+=1;){
			
			if scr_exists(warping_ship.ship_segment[i].module){
				fake_warping_ship.modules[i,0] = warping_ship.ship_segment[i].module.sprite_index
				fake_warping_ship.modules[i,3] = warping_ship.ship_segment[i].module.offset_angle
			}
			else{
				fake_warping_ship.modules[i,0] = spr_segment
				fake_warping_ship.modules[i,3] = 0
			}
			fake_warping_ship.modules[i,1] = warping_ship.ship_segment[i].placement_angle
			fake_warping_ship.modules[i,2] = warping_ship.ship_segment[i].placement_distance
	
			if warping_ship.ship_segment[i].ship_segment_right != noone
				fake_warping_ship.modules[i,4] = 1
			else fake_warping_ship.modules[i,4] = 0
			if warping_ship.ship_segment[i].ship_segment_below != noone
				fake_warping_ship.modules[i,5] = 1
			else fake_warping_ship.modules[i,5] = 0
		}
		}
	
	// Move the player ship to the center of the wormhole
	
	var temp_dir = point_direction(warping_ship.phy_position_x,warping_ship.phy_position_y,phy_position_x,phy_position_y)
	var temp_dist = point_distance(warping_ship.phy_position_x,warping_ship.phy_position_y,phy_position_x,phy_position_y)
	var step_coefficient = 0.04
	var step_coefficient_side = 0//0.12

	warping_ship.phy_position_x = warping_ship.phy_position_x + lengthdir_x(temp_dist * step_coefficient, temp_dir) + lengthdir_x(temp_dist * step_coefficient_side, temp_dir -90)
	warping_ship.phy_position_y = warping_ship.phy_position_y + lengthdir_y(temp_dist * step_coefficient, temp_dir) + lengthdir_y(temp_dist * step_coefficient_side, temp_dir -90)
	warping_ship.phy_speed_x = warping_ship.phy_position_x - warping_ship.phy_position_xprevious
	warping_ship.phy_speed_y = warping_ship.phy_position_y - warping_ship.phy_position_yprevious
	
	}

	
	
// Check when done warping

if scr_exists(warping_ship) and scr_exists(fake_warping_ship){
	if fake_warping_ship.draw_scale <= 0{
		done_warping = true
		}
	}
			
if death_timer == 0 {
	if scr_exists(warping_ship)
		room_goto (next_level)
	else instance_destroy();
	}