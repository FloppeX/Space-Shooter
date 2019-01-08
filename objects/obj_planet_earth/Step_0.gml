player_ship = instance_place(phy_position_x,phy_position_y,obj_player)
if scr_exists(player_ship){
	with(player_ship){
		disabled_timer = 10
		add_thrust = 0
		phy_active = false
		visible = false
		for(var i = 0; i < array_height_2d(modules); i+=1;){
			if scr_exists(modules[i,0]){
				modules[i,0].phy_active = false
				modules[i,0].visible = false
				}
			}
		}
		
	// Create a fake ship object that will spin and shrink
	if fake_player_ship == noone{
		fake_player_ship = instance_create_depth(player_ship.phy_position_x,player_ship.phy_position_y,-10,obj_landing_ship)
		fake_player_ship.phy_rotation = player_ship.phy_rotation
		fake_player_ship.phy_speed_x = player_ship.phy_speed_x
		fake_player_ship.phy_speed_y = player_ship.phy_speed_y
		fake_player_ship.sprite_index = player_ship.sprite_index
		for(var i = 0; i < array_height_2d(player_ship.modules); i+=1;)
			if scr_exists(player_ship.modules[i,0]){
				fake_player_ship.modules[i,0] = player_ship.modules[i,0].sprite_index
				fake_player_ship.modules[i,2] = player_ship.modules[i,2]
				fake_player_ship.modules[i,3] = player_ship.modules[i,3]
				fake_player_ship.modules[i,4] = player_ship.modules[i,0].offset_angle
				}
			else fake_player_ship.modules[i,0] = noone
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
