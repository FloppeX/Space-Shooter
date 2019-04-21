event_inherited();
/*
if joint != noone{
	physics_joint_set_value(joint,phy_joint_upper_angle_limit,offset_angle)
	physics_joint_set_value(joint,phy_joint_lower_angle_limit,offset_angle)
	physics_joint_set_value(joint,phy_joint_angle_limits,1)
	}
*/
	
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
	if my_sawblade = noone{
		my_sawblade = instance_create_depth(phy_position_x,phy_position_y,-9,sawblade_object);
		my_sawblade.owner = id
		sawblade_arm_joint = physics_joint_prismatic_create(id,my_sawblade,phy_position_x,phy_position_y,lengthdir_x(10, target_angle),lengthdir_y(10,target_angle),0,max_arm_length,1,10,0,1,0)
		}
	physics_joint_set_value(sawblade_arm_joint,phy_joint_motor_speed,6)
	sprite_index = spr_sawblade_cover
	}
else 
	if scr_exists(my_sawblade)
		physics_joint_set_value(sawblade_arm_joint,phy_joint_motor_speed,-4)

if scr_exists(my_sawblade) 
	if activated == false
		if point_distance(phy_position_x,phy_position_y,my_sawblade.phy_position_x,my_sawblade.phy_position_y) <= 1{
			physics_joint_delete(sawblade_arm_joint)
			with(my_sawblade)
				instance_destroy()
			my_sawblade = noone
			sprite_index = spr_sawblade_placeholder
		}

