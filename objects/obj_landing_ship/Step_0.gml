planet = instance_nearest(phy_position_x,phy_position_y,obj_planet_earth)

if planet == noone
	instance_destroy();
	

// Movement

// Move the ship to the landing point

var temp_dir = point_direction(phy_position_x,phy_position_y,planet.landing_point_x,planet.landing_point_y)
var temp_dist = point_distance(phy_position_x,phy_position_y,planet.landing_point_x,planet.landing_point_y)
var step_coefficient = 0.995

if phy_position_y <= planet.landing_point_y and !on_approach{
	on_approach = true
	temp_speed = phy_speed
	}
if on_approach{
	phy_rotation -= 2
	phy_speed_x = (lengthdir_x(temp_speed,-phy_rotation))
	phy_speed_y = (lengthdir_y(temp_speed,-phy_rotation))
	temp_speed = step_coefficient * temp_speed
	}

	
// Shrink the ship
	
draw_scale -= 0.002
	
if draw_scale <= 0
	instance_destroy();

depth = -round(100-100*draw_scale)