
var t = (10 * timer) mod 360;

var max_force = phy_mass * 300; 

//phy_rotation += 10*dsin(t);
var force = max_force * dsin(t+90);
var x_force = lengthdir_x(force,travel_direction+90)
var y_force = lengthdir_y(force,travel_direction+90)
physics_apply_force(phy_com_x,phy_com_x,x_force,y_force)