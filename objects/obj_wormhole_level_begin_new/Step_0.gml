event_inherited();

warp_start_timer -= 1;
if player_ship == noone and !done_warping
	player_ship = instance_place(phy_position_x,phy_position_y,obj_player)
/*
if !scr_exists(player_ship){
	if scr_exists(fake_player_ship)
		with(fake_player_ship)
			instance_destroy()
	instance_destroy()
	}*/
	
if scr_exists(player_ship){
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
				ship_segment[i].module.phy_rotation = -phy_rotation + ship_segment[i].module.offset_angle
				}
			}
		}
		
	// Create a fake ship object that will spin and shrink
	if !scr_exists(fake_player_ship){
		fake_player_ship = instance_create_depth(player_ship.phy_position_x,player_ship.phy_position_y,-10,obj_wormhole_traveller_level_begin_player)
		fake_player_ship.phy_rotation = player_ship.phy_rotation
		fake_player_ship.sprite_index = player_ship.sprite_index
		fake_player_ship.draw_scale = 0
		for(var i = 0; i < array_length_1d(player_ship.ship_segment); i+=1;)
			if scr_exists(player_ship.ship_segment[i].module){
				fake_player_ship.modules[i,0] = player_ship.ship_segment[i].module.sprite_index
				fake_player_ship.modules[i,2] = player_ship.ship_segment[i].placement_angle
				fake_player_ship.modules[i,3] = player_ship.ship_segment[i].placement_distance
				fake_player_ship.modules[i,4] = player_ship.ship_segment[i].module.offset_angle
				}
			else fake_player_ship.modules[i,0] = noone
		}
		
	// Check the fake ship to see if done warping
	if scr_exists(fake_player_ship) and warp_start_timer <= 0{
		fake_player_ship.draw_scale += 0.01
		fake_player_ship.draw_scale = clamp(fake_player_ship.draw_scale,0,1)
		var temp_angle_diff = angle_difference(player_ship.phy_rotation,fake_player_ship.phy_rotation)
		fake_player_ship.ship_rotation_speed = ship_rotation_speed
		if temp_angle_diff < 30 and fake_player_ship.draw_scale == 1
			fake_player_ship.ship_rotation_speed = min(400,20 * temp_angle_diff)
		if fake_player_ship.draw_scale == 1 and abs(temp_angle_diff) < 0.5{
			done_warping = true
			//global.zoom = 800
			}	
		}
	// Move the player ship to the center of the wormhole

	//var temp_dir = point_direction(player_ship.phy_position_x,player_ship.phy_position_y,phy_position_x,phy_position_y)
	//var temp_dist = point_distance(player_ship.phy_position_x,player_ship.phy_position_y,phy_position_x,phy_position_y)
	//var step_coefficient = 0.04
	player_ship.phy_position_x = phy_position_x //+ lengthdir_x(temp_dist * step_coefficient, temp_dir)
	player_ship.phy_position_y = phy_position_y //+ lengthdir_y(temp_dist * step_coefficient, temp_dir)
	}

	
if done_warping{

	if scr_exists(fake_player_ship)
		with(fake_player_ship)
			instance_destroy();
	if scr_exists(player_ship){
		with(player_ship){
			disabled_timer = 1
			phy_rotation = -90
			phy_active = true
			visible = true
			for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
				ship_segment[i].phy_active = true
				ship_segment[i].visible = true
				if scr_exists(ship_segment[i].module){
					ship_segment[i].module.phy_active = true
					ship_segment[i].module.visible = true
					}
				}
		}
		player_ship = noone
		}
	}
