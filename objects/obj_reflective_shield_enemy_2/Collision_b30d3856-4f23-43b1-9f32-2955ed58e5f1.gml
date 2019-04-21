other.bullet_color = c_fuchsia

var angle_from_center = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
//var bullet_direction = point_direction(other.phy_position_xprevious,other.phy_position_yprevious,other.phy_position_x,other.phy_position_y)
//var bullet_angle = angle_difference(bullet_direction,angle_from_center)
var new_bullet_direction = angle_from_center
other.phy_speed_x = lengthdir_x(other.phy_speed,new_bullet_direction)
other.phy_speed_y = lengthdir_y(other.phy_speed,new_bullet_direction)