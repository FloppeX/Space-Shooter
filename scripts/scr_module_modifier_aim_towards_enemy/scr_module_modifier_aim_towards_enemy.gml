var seek_range = 1000
var rotation_speed = 1

var target = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,60,seek_range)
if target != noone{
	target_dir = scr_wrap_intercept_course(id,target,phy_speed+bullet_speed)
	phy_rotation = -target_dir;
	}
