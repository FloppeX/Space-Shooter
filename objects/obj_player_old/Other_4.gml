phy_active = true
visible = false
phy_rotation = -90
draw_scale = 1
for(var i = 0; i < array_height_2d(modules); i+=1;){
	modules[i,0] = modules[i,1].module // update the array to include each module from each module holder 
	if scr_exists(modules[i,0]){
		modules[i,0].phy_active = true
		modules[i,0].visible = false
		modules[i,0].phy_position_x = phy_position_x + lengthdir_x(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,0].phy_position_y = phy_position_y + lengthdir_y(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,0].phy_rotation = phy_rotation - modules[i,0].offset_angle
		with (modules[i,0])
			joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 20,0,1,0);
			
		}
	}