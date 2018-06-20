player = instance_find(obj_player,0)
if player != noone{
	dist = point_distance(phy_position_x,phy_position_y,player.phy_position_x,player.phy_position_y)
	dir = point_direction(phy_position_x,phy_position_y,player.phy_position_x,player.phy_position_y)
	if dist <= seek_range
		physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(pull_force,dir),lengthdir_y(pull_force,dir))
	}
	
scr_find_mirror_positions();

scr_wrap_room();