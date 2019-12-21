event_inherited();

warp_start_timer -= 1;
if warping_ship == noone and !done_warping
	warping_ship = instance_place(phy_position_x,phy_position_y,obj_player)

if scr_exists(warping_ship){
		
	// Create a fake ship object that will spin and shrink
	if !scr_exists(fake_warping_ship){
		fake_warping_ship = instance_create_depth(warping_ship.phy_position_x,warping_ship.phy_position_y,-10,obj_wormhole_traveller_level_begin_ship)
		fake_warping_ship.phy_rotation = warping_ship.phy_rotation
		fake_warping_ship.sprite_index = warping_ship.sprite_index
		fake_warping_ship.draw_scale = 0
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
		
	// Check the fake ship to see if done warping
	if scr_exists(fake_warping_ship) and warp_start_timer <= 0{
		fake_warping_ship.phy_position_x = warping_ship.phy_position_x
		fake_warping_ship.phy_position_y = warping_ship.phy_position_y
		fake_warping_ship.draw_scale += 0.01
		fake_warping_ship.draw_scale = clamp(fake_warping_ship.draw_scale,0,1)
		var temp_angle_diff = angle_difference(warping_ship.phy_rotation,fake_warping_ship.phy_rotation)
		fake_warping_ship.ship_rotation_speed = ship_rotation_speed
		if temp_angle_diff < -30 and fake_warping_ship.draw_scale == 1
			fake_warping_ship.ship_rotation_speed = min(ship_rotation_speed,10 * temp_angle_diff)
		if fake_warping_ship.draw_scale == 1 and temp_angle_diff < 0.5{
			done_warping = true
			//global.zoom = 800
			}	
		}
	// Move the player ship to the center of the wormhole

	with(warping_ship){
		
		var angle_diff = angle_difference(-phy_rotation,90)
		physics_apply_angular_impulse(0.8*angle_diff)
		physics_apply_angular_impulse(-0.08*phy_angular_velocity)
		
		var x_diff = other.phy_position_x - phy_position_x
		var x_force = 2*x_diff
		physics_apply_force(phy_position_x,phy_position_y,x_force,0)
		var x_braking_force = -20 * phy_speed_x
		physics_apply_force(phy_position_x,phy_position_y,x_braking_force,0)
		var y_diff = other.phy_position_y - phy_position_y
		var y_force = 2*y_diff
		physics_apply_force(phy_position_x,phy_position_y,0,y_force)
		var y_braking_force = -20 * phy_speed_y
		physics_apply_force(phy_position_x,phy_position_y,0,y_braking_force)
		
			disabled_timer = 30
			phy_active = true
			visible = false//true
			for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
				ship_segment[i].phy_active = true
				ship_segment[i].visible = false//true
				if scr_exists(ship_segment[i].module){
					ship_segment[i].module.phy_active = true
					ship_segment[i].module.visible = false//true
					ship_segment[i].module.phy_rotation = phy_rotation-ship_segment[i].module.offset_angle
					}
				}
		}
	}
	

if done_warping{

	if scr_exists(fake_warping_ship)
		with(fake_warping_ship)
			instance_destroy();
	if scr_exists(warping_ship){
		with(warping_ship){
			disabled_timer = 30
			//phy_rotation = -90
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
		warping_ship = noone
		}
	}
