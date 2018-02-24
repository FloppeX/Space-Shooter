var cycle_length = 100

var temp_timer = timer mod cycle_length;
if  temp_timer == 0.4 * cycle_length{
	phy_speed_x = lengthdir_x(phy_speed,travel_direction+90)
	phy_speed_y = lengthdir_y(phy_speed,travel_direction+90)
	}
	
if  temp_timer == 0.5 * cycle_length{
	phy_speed_x = lengthdir_x(phy_speed,travel_direction-90)
	phy_speed_y = lengthdir_y(phy_speed,travel_direction-90)
	}
if  temp_timer == 0.6 * cycle_length{
	phy_speed_x = lengthdir_x(phy_speed,travel_direction-90)
	phy_speed_y = lengthdir_y(phy_speed,travel_direction-90)
	}

if  temp_timer == 0.7 * cycle_length{
	phy_speed_x = lengthdir_x(phy_speed,travel_direction+90)
	phy_speed_y = lengthdir_y(phy_speed,travel_direction+90)
	}


/*
var t = 10 * timer mod 360;

var amplitude = 1; 

//phy_rotation += 10*dsin(t);
var shift = amplitude * dsin(t+90);
 
phy_speed_x += lengthdir_x(shift, -phy_rotation+90);
phy_speed_y += lengthdir_y(shift, -phy_rotation+90);