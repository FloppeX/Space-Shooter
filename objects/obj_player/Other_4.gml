phy_active = true
visible = true
phy_rotation = 0
draw_scale = 1
for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	ship_segment[i].persistent = true
	ship_segment[i].visible = true
	ship_segment[i].phy_position_x = phy_position_x + lengthdir_x(ship_segment[i].placement_distance,ship_segment[i].placement_angle)
	ship_segment[i].phy_position_y = phy_position_y + lengthdir_y(ship_segment[i].placement_distance,ship_segment[i].placement_angle)
	ship_segment[i].joint = physics_joint_weld_create(id, ship_segment[i], ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 10, 10,false);
	if scr_exists(ship_segment[i].module){
				ship_segment[i].module.persistent = true
				ship_segment[i].module.visible = true
				ship_segment[i].module.phy_position_x = ship_segment[i].phy_position_x
				ship_segment[i].module.phy_position_y = ship_segment[i].phy_position_y
				ship_segment[i].module.joint = physics_joint_revolute_create(ship_segment[i], ship_segment[i].module,ship_segment[i].phy_position_x,ship_segment[i].phy_position_y,0, 360, 0, 10,0,1,0);
		}
	}