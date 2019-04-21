// Description text

modifier_description = "Auto aim"

// Modifier actions

if !scr_exists(owner)
	exit
else 

var seek_range = 800
var max_rotation = argument0
var rotation_speed = 2
var starting_dir = -phy_rotation//-owner.phy_rotation+offset_angle
var target = scr_rocket_find_target_in_arc(owner.target_objects[0] ,starting_dir,2*max_rotation,seek_range)
if target == noone
	target = scr_rocket_find_target_in_arc(owner.target_objects[1] ,starting_dir,2*max_rotation,seek_range)
if scr_exists(target){
	bullet_speed = (bullet_speed_base + bullet_speed_bonus) * bullet_speed_multiplier
	var target_dir = scr_wrap_intercept_course(id,target,bullet_speed) // point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y) //scr_wrap_intercept_course(id,target,bullet_speed)
	//var target_dir = point_direction(phy_position_x,phy_position_y,scr_wrap_closest_x(target),scr_wrap_closest_y(target))
	if 	target_dir == -1
		target_dir = starting_dir
	}
else target_dir = -owner.phy_rotation+offset_angle//starting_dir
/*
if abs (angle_difference(target_dir,starting_dir)) > max_rotation
	target_dir = starting_dir*/
if abs(angle_difference(-owner.phy_rotation+offset_angle,target_dir)) > max_rotation
	target_dir = -owner.phy_rotation+offset_angle

	var angle_diff = angle_difference(starting_dir,target_dir)

	if abs(angle_diff) <= rotation_speed
		target_angle = target_dir
	else {
		if angle_diff > 0
			target_angle = starting_dir - rotation_speed
		else target_angle = starting_dir + rotation_speed
		}


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
	
	