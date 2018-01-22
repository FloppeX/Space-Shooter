
travel_speed = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
forward_speed = lengthdir_x(phy_speed,angle_difference(-phy_rotation,travel_direction))
lateral_drift_speed = lengthdir_y(travel_speed,angle_difference(-phy_rotation,travel_direction))
lateral_drift_direction = -phy_rotation + 90;
drift_resistance_force = drift_resistance * lateral_drift_speed * forward_speed
drift_resistance_force_x = lengthdir_x(drift_resistance_force,lateral_drift_direction+180)
drift_resistance_force_y = lengthdir_y(drift_resistance_force,lateral_drift_direction+180)
if forward_speed > 0
	physics_apply_force(phy_com_x,phy_com_y, drift_resistance_force_x , drift_resistance_force_y)