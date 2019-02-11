event_inherited();
//

use_timer -= 1;

if activated and use_timer <= 0 and teleporting == false{
	teleporting = true

	target_point_x = owner.phy_position_x + lengthdir_x(teleport_distance,-phy_rotation)
	target_point_x = scr_wrap_closest_x_non_object(owner.phy_position_x,target_point_x)
	target_point_y = owner.phy_position_y + lengthdir_y(teleport_distance,-phy_rotation)
	target_point_y = scr_wrap_closest_y_non_object(owner.phy_position_y,target_point_y)

	temp_dist = scr_wrap_distance_to_point(owner.phy_position_x,owner.phy_position_y,target_point_x,target_point_y)
	temp_dir = scr_wrap_direction_to_point(owner.phy_position_x,owner.phy_position_y,target_point_x,target_point_y)
	
	// Determine teleport speed
	
	temp_speed = min((temp_dist / duration_timer),20) // Max speed 20, I want to avoid really fast speeds
	
	//Save original phy values to re-apply later
	temp_phy_rotation = owner.phy_rotation
	temp_angular_velocity = owner.phy_angular_velocity
	temp_speed_x = owner.phy_speed_x
	temp_speed_y = owner.phy_speed_y
	owner.controls_disabled = true
	owner.visible = false
	owner.phy_active = false
	owner.phy_angular_velocity = 0
	owner.phy_rotation = temp_phy_rotation
	owner.phy_speed_x = 0
	owner.phy_speed_y = 0
	}
	
if teleporting{
	duration_timer -= 1
	temp_dist = scr_wrap_distance_to_point(owner.phy_position_x,owner.phy_position_y,target_point_x,target_point_y)
	temp_dir = scr_wrap_direction_to_point(owner.phy_position_x,owner.phy_position_y,target_point_x,target_point_y)
	owner.phy_position_x = owner.phy_position_x + lengthdir_x(temp_speed,temp_dir)
	owner.phy_position_y = owner.phy_position_y + lengthdir_y(temp_speed,temp_dir)
	
	// Create teleport out effect
	if duration_timer > 0{
	temp_angle = scr_wrap_direction_to_point(phy_position_x,phy_position_y,phy_position_xprevious,phy_position_yprevious)
	temp_distance = scr_wrap_distance_to_point(phy_position_x,phy_position_y,phy_position_xprevious,phy_position_yprevious)
	x_pos_diff = phy_position_x - scr_wrap_closest_x_non_object(phy_position_x,phy_position_xprevious)
	y_pos_diff = phy_position_y - scr_wrap_closest_x_non_object(phy_position_y,phy_position_yprevious)
	part_type_orientation(global.teleport_out_particle ,-owner.phy_rotation,-owner.phy_rotation,0,0,1);   
	for (var p= 0; p <= temp_distance; p += 1){
		part_particles_create(global.part_system_below, owner.phy_position_x-lengthdir_x(p,temp_angle), owner.phy_position_y-lengthdir_y(p,temp_angle), global.teleport_out_particle, 1);
		if x > 0.5 * room_width
			part_particles_create(global.part_system_below, owner.phy_position_x-global.play_area_width-lengthdir_x(p,temp_angle), owner.phy_position_y-lengthdir_y(p,temp_angle), global.teleport_out_particle, 1);
		else
			part_particles_create(global.part_system_below, owner.phy_position_x+global.play_area_width-lengthdir_x(p,temp_angle), owner.phy_position_y-lengthdir_y(p,temp_angle), global.teleport_out_particle, 1);
		if y > 0.5 * room_height
			part_particles_create(global.part_system_below, owner.phy_position_x-lengthdir_x(p,temp_angle), owner.phy_position_y-global.play_area_height-lengthdir_y(p,temp_angle), global.teleport_out_particle, 1);
		else
			part_particles_create(global.part_system_below, owner.phy_position_x-lengthdir_x(p,temp_angle), owner.phy_position_y+global.play_area_height-lengthdir_y(p,temp_angle), global.teleport_out_particle, 1);
		}
	}
	
	if duration_timer <= 0{
		owner.phy_active = true
		owner.phy_position_x = target_point_x
		owner.phy_position_y = target_point_y
		owner.phy_rotation = temp_phy_rotation
		owner.phy_angular_velocity = temp_angular_velocity
		owner.phy_speed_x = temp_speed_x
		owner.phy_speed_y = temp_speed_y
		teleporting = false
		duration_timer = teleport_duration
		use_timer = use_timer_interval;
		owner.controls_disabled = false
		owner.visible = true
		target_point_x = 0
		target_point_y = 0
		
		
		}
}