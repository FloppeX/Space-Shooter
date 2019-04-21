
phy_rotation = 0
if !scr_exists(my_sawblade){
	my_sawblade = instance_create_depth(phy_position_x,phy_position_y,-9,sawblade_object);
	my_sawblade.owner = id
	sawblade_arm_joint = physics_joint_prismatic_create(id,my_sawblade,phy_position_x,phy_position_y,100,0,0,max_arm_length,1,10,0,1,0)
	}