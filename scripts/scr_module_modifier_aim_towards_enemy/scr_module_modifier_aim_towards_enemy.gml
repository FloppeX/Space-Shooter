// Description text

modifier_description = "Auto aim"

// Modifier actions

var seek_range = 800
var max_rotation = 45

var target = scr_rocket_find_target_in_arc(owner.target_object ,-owner.phy_rotation+offset_angle,2*max_rotation,seek_range)
if target != noone{
	draw_set_color(c_purple)
	draw_circle(target.phy_position_x,target.phy_position_y,60,0)
	var target_dir = scr_wrap_intercept_course(id,target,bullet_speed) // point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y) //scr_wrap_intercept_course(id,target,bullet_speed)
	if 	target_dir == -1
		target_dir = -owner.phy_rotation + offset_angle
	}
else target_dir = -owner.phy_rotation + offset_angle

target_dir = clamp(target_dir,-owner.phy_rotation + offset_angle-max_rotation,-owner.phy_rotation + offset_angle+max_rotation)

target_angle = target_dir
	
	