closest_ship = instance_find(obj_player,0)
if closest_ship == noone
	closest_ship = instance_find(obj_enemy_ship,0)
if closest_ship != noone{
	dist = point_distance(phy_position_x,phy_position_y,closest_ship.phy_position_x,closest_ship.phy_position_y)
	dir = point_direction(phy_position_x,phy_position_y,closest_ship.phy_position_x,closest_ship.phy_position_y)
	if dist <= seek_range
		physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(pull_force,dir),lengthdir_y(pull_force,dir))
	}
	
scr_find_mirror_positions();

scr_wrap_room();