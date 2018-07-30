// Description text

modifier_description = "Auto aim"

// Modifier actions

var seek_range = 800
var rotation_speed = 1
max_rotation = 70

var target = scr_rocket_find_target_in_arc(owner.target_object ,-(owner.phy_rotation+offset_angle),2*max_rotation,seek_range)
if target != noone
	var target_dir = scr_wrap_intercept_course(id,target,bullet_speed) // point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y) //scr_wrap_intercept_course(id,target,bullet_speed)
else target_dir = -(owner.phy_rotation + offset_angle)
var angle_diff = angle_difference(-phy_rotation,target_dir)
if angle_diff > 0 
	rotation_add += 1;
if angle_diff < 0 
	rotation_add -= 1;
	
rotation_add = clamp(rotation_add,-max_rotation,max_rotation)
	
	