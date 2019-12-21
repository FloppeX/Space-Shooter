player_ship = instance_place(phy_position_x,phy_position_y,obj_player)
if scr_exists(player_ship) and !done_landing{
	with(player_ship){
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
	if !scr_exists(fake_player_ship){
		fake_player_ship = instance_create_depth(player_ship.phy_position_x,player_ship.phy_position_y,-10,obj_wormhole_traveller_level_end_ship)
		fake_player_ship.phy_rotation = player_ship.phy_rotation
		fake_player_ship.sprite_index = player_ship.sprite_index
		for(var i = 0; i < array_length_1d(player_ship.ship_segment); i+=1;){
			
			if scr_exists(player_ship.ship_segment[i].module){
				fake_player_ship.modules[i,0] = player_ship.ship_segment[i].module.sprite_index
				fake_player_ship.modules[i,3] = player_ship.ship_segment[i].module.offset_angle
			}
			else{
				fake_player_ship.modules[i,0] = spr_segment
				fake_player_ship.modules[i,3] = 0
			}
			fake_player_ship.modules[i,1] = player_ship.ship_segment[i].placement_angle
			fake_player_ship.modules[i,2] = player_ship.ship_segment[i].placement_distance
	
			if player_ship.ship_segment[i].ship_segment_right != noone
				fake_player_ship.modules[i,4] = 1
			else fake_player_ship.modules[i,4] = 0
			if player_ship.ship_segment[i].ship_segment_below != noone
				fake_player_ship.modules[i,5] = 1
			else fake_player_ship.modules[i,5] = 0
		}
		}
	
	// Move the player ship to the center of the planet
	
	var temp_dir = point_direction(player_ship.phy_position_x,player_ship.phy_position_y,phy_position_x,phy_position_y)
	var temp_dist = point_distance(player_ship.phy_position_x,player_ship.phy_position_y,phy_position_x,phy_position_y)
	var step_coefficient = 0.02
	var step_coefficient_side = 0//0.12

	player_ship.phy_position_x = player_ship.phy_position_x + lengthdir_x(temp_dist * step_coefficient, temp_dir) + lengthdir_x(temp_dist * step_coefficient_side, temp_dir -90)
	player_ship.phy_position_y = player_ship.phy_position_y + lengthdir_y(temp_dist * step_coefficient, temp_dir) + lengthdir_y(temp_dist * step_coefficient_side, temp_dir -90)
	player_ship.phy_speed_x = player_ship.phy_position_x - player_ship.phy_position_xprevious
	player_ship.phy_speed_y = player_ship.phy_position_y - player_ship.phy_position_yprevious
	
	}

	
	
// Check when done landing

if scr_exists(fake_player_ship){
	if fake_player_ship.draw_scale <= 0
		done_landing = true
	}
