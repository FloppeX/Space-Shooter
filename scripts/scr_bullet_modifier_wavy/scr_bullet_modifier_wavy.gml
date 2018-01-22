var t = timer mod 360;

var amplitude = 1; 

//phy_rotation += 10*dsin(t);
var shift = amplitude * dsin(t);
 
phy_speed_x += lengthdir_x(shift, -phy_rotation+90);
phy_speed_y += lengthdir_y(shift, -phy_rotation+90);