if event_number != ev_step_end
	exit

var t = timer mod 360;

var amplitude = 8; 

//phy_rotation += 10*dsin(t);
var shift = amplitude * dsin(t);
 
phy_position_x += lengthdir_x(shift, -phy_rotation+90);
phy_position_y += lengthdir_y(shift, -phy_rotation +90);

//phy_rotation = -point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)