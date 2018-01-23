var t = 10 * timer mod 360;
var force = 100
var dir 

var pulling_force = force * dsin(t+90);

physics_apply_local_force(0,0,0,pulling_force)


/*
var t = 10 * timer mod 360;

var amplitude = 1; 

//phy_rotation += 10*dsin(t);
var shift = amplitude * dsin(t+90);
 
phy_speed_x += lengthdir_x(shift, -phy_rotation+90);
phy_speed_y += lengthdir_y(shift, -phy_rotation+90);