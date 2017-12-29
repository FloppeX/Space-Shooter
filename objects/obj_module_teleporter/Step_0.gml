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
	
	// Create view object
	
	temp_view_object = instance_create_depth(owner.phy_position_x,owner.phy_position_y,-10,obj_temp_view_object)
	temp_view_object.phy_position_x = owner.phy_position_x
	temp_view_object.phy_position_y = owner.phy_position_y
	global.obj_to_center_view_on = temp_view_object
	
	//Save original phy values to re-apply later
	temp_phy_rotation = owner.phy_rotation
	temp_angular_velocity = owner.phy_angular_velocity
	temp_speed_x = owner.phy_speed_x
	temp_speed_y = owner.phy_speed_y
	owner.movement_disabled = true
	owner.visible = false
	owner.phy_active = false
	owner.phy_angular_velocity = 0
	owner.phy_rotation = temp_phy_rotation
	owner.phy_speed_x = 0
	owner.phy_speed_y = 0
	
	// Create teleport out effect
	part_type_orientation(global.teleport_out_particle ,-owner.phy_rotation,-owner.phy_rotation,0,0,1);   
	part_particles_create(global.part_system_below, owner.phy_position_x, owner.phy_position_y, global.teleport_out_particle, 1);
	
	}
	
// SCRAP ALL THIS. Move the player to -1000,-1000. Make sure the warp point is within the play area. Wait teleport duration, then move player there. DONE.
	
if teleporting{
	duration_timer -= 1
	temp_dist = scr_wrap_distance_to_point(temp_view_object.phy_position_x,temp_view_object.phy_position_y,target_point_x,target_point_y)
	temp_dir = scr_wrap_direction_to_point(temp_view_object.phy_position_x,temp_view_object.phy_position_y,target_point_x,target_point_y)
	temp_view_object.phy_position_x = temp_view_object.phy_position_x + lengthdir_x(temp_speed,temp_dir)
	temp_view_object.phy_position_y = temp_view_object.phy_position_y + lengthdir_y(temp_speed,temp_dir)

	// Create teleport in effect just before player teleports back
	if duration_timer == 20{
		part_type_orientation(global.teleport_in_particle ,-owner.phy_rotation,-owner.phy_rotation,0,0,1);      
		part_particles_create(global.part_system_below, target_point_x, target_point_y, global.teleport_in_particle, 1);
	}
	
	if duration_timer <= 1{
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
		owner.movement_disabled = false
		owner.visible = true
		global.obj_to_center_view_on = owner
		with(temp_view_object)
			instance_destroy()
		target_point_x = 0
		target_point_y = 0
		
		
		}
}