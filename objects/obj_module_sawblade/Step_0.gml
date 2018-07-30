event_inherited();

if scr_timer(30){
	target = scr_rocket_find_target_in_arc(owner.target_object ,-phy_rotation,360,seek_range)
	if target == noone
		target = scr_rocket_find_target_in_arc(obj_asteroid ,-phy_rotation,360,seek_range)
	}
if target == noone
	activated = false
else activated = true

if activated == false{
	physics_joint_set_value(sawblade_arm_joint,phy_joint_motor_speed,-3)
	}
	
if activated == true{
	physics_joint_set_value(sawblade_arm_joint,phy_joint_motor_speed,6)
	}


/*
my_sawblade.target_position_x = phy_position_x + lengthdir_x(current_arm_length,-phy_rotation)
my_sawblade.target_position_y = phy_position_y + lengthdir_y(current_arm_length,-phy_rotation)