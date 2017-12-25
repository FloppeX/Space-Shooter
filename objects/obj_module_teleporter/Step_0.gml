event_inherited();
//

use_timer -= 1;

if activated and use_timer <= 0 and teleporting == false{
	teleporting = true

	target_point_x = owner.phy_position_x + lengthdir_x(teleport_distance,-phy_rotation)
	target_point_y = owner.phy_position_y + lengthdir_y(teleport_distance,-phy_rotation)
	temp_phy_rotation = owner.phy_rotation
	temp_angular_velocity = owner.phy_angular_velocity
	temp_speed_x = owner.phy_speed_x
	temp_speed_y = owner.phy_speed_y

	}
	
if teleporting{
	duration_timer -= 1
	owner.movement_disabled = true
	owner.visible = false
	owner.phy_angular_velocity = 0
	owner.phy_speed_x = 0
	owner.phy_speed_y = 0
	temp_dist = point_distance(owner.phy_position_x,owner.phy_position_y,target_point_x,target_point_y)
	temp_dir = point_direction(owner.phy_position_x,owner.phy_position_y,target_point_x,target_point_y)
	temp_speed = temp_dist / duration_timer
	owner.phy_position_x = owner.phy_position_x + lengthdir_x(temp_speed,temp_dir)
	owner.phy_position_y = owner.phy_position_y + lengthdir_y(temp_speed,temp_dir)

	if duration_timer <= 0{
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
		target_point_x = 0
		target_point_y = 0
		}
}