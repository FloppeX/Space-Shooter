timer = 2

target = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,targeting_arc)
if target != noone
	target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
else target_dir = -phy_rotation
target_dir += random(spread)-0.5*spread;
