event_inherited();

if joint != noone{
	physics_joint_set_value(joint,phy_joint_upper_angle_limit,offset_angle)
	physics_joint_set_value(joint,phy_joint_lower_angle_limit,offset_angle)
	physics_joint_set_value(joint,phy_joint_angle_limits,1)
	}
	
if scr_timer(30){
	target = scr_rocket_find_target_in_arc(owner.target_objects[0],-phy_rotation,360,seek_range)
	if target == noone
		target = scr_rocket_find_target_in_arc(owner.target_objects[1],-phy_rotation,360,seek_range)
	if target == noone
		target = scr_rocket_find_target_in_arc(obj_asteroid ,-phy_rotation,360,seek_range)
	}
	
if target == noone
	activated = false
else activated = true

if activated == true{
	physics_joint_set_value(sawblade_arm_joint,phy_joint_motor_speed,6)
	}
else 
	physics_joint_set_value(sawblade_arm_joint,phy_joint_motor_speed,-4)
/*
if activated == false{
	my_sawblade.phy_position_x = phy_position_x
	my_sawblade.phy_position_y = phy_position_y
	}
