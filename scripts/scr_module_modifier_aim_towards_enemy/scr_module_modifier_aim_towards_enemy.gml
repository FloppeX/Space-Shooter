// Description text

modifier_description = "Auto aim"

// Modifier actions

var seek_range = 800
var max_rotation = argument0
var starting_dir = -owner.phy_rotation+offset_angle
var target = scr_rocket_find_target_in_arc(owner.target_object ,starting_dir,2*max_rotation,seek_range)
if scr_exists(target){

	var target_dir = scr_wrap_intercept_course(id,target,bullet_speed) // point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y) //scr_wrap_intercept_course(id,target,bullet_speed)
	//var target_dir = point_direction(phy_position_x,phy_position_y,scr_wrap_closest_x(target),scr_wrap_closest_y(target))
	if 	target_dir == -1
		target_dir = starting_dir
	}
else target_dir = starting_dir

if abs (angle_difference(target_dir,starting_dir)) > max_rotation
	target_dir = starting_dir


target_angle = target_dir

/*
var seek_range = 800
var max_rotation = 360//argument0

var target = scr_rocket_find_target_in_arc(owner.target_object ,-owner.phy_rotation+offset_angle,2*max_rotation,seek_range)
if target != noone{
	draw_sprite(spr_crosshair,-1, target.phy_position_x,target.phy_position_y)
	var target_dir = scr_wrap_intercept_course(id,target,bullet_speed) // point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y) //scr_wrap_intercept_course(id,target,bullet_speed)
	if 	target_dir != -1{ // if there was a possible result...
		var angle_diff = angle_difference(target_dir,-owner.phy_rotation + offset_angle) 
		if angle_diff > max_rotation
			target_angle = -owner.phy_rotation + offset_angle
		target_dir = clamp(target_dir,-owner.phy_rotation + offset_angle-max_rotation,-owner.phy_rotation + offset_angle+max_rotation)
		target_angle = target_dir
		}
	else target_dir = -owner.phy_rotation + offset_angle
	}
else target_dir = -owner.phy_rotation + offset_angle

//target_dir = clamp(target_dir,-owner.phy_rotation + offset_angle-max_rotation,-owner.phy_rotation + offset_angle+max_rotation)

target_angle = target_dir
	
	