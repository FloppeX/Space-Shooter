var seek_range = 600
var force = 15

var target = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,180,seek_range)
if target != noone{
	var target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
	var angle_diff = angle_difference(-phy_rotation,target_dir)
	physics_apply_local_force(0,0,0,force*sign(angle_diff))
	}