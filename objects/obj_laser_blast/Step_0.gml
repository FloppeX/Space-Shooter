phy_speed_x = 0
phy_speed_y = 0

x_old = phy_position_x
y_old = phy_position_y

if timer <= 0
	instance_destroy();
timer -= 1;

collision_coords = scr_collision_line_point(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation),obj_parent_physical,1,1)
if collision_coords[0] != noone{
	phy_position_x = collision_coords[1]
	phy_position_y = collision_coords[2]
	}
else {
	phy_position_x = phy_position_x+lengthdir_x(range,-phy_rotation)
	phy_position_y = phy_position_y+lengthdir_y(range,-phy_rotation)
	}

/*var i = 0
while victim == noone and i < range{
	victim = instance_place(phy_position_x,phy_position_y,obj_parent_physical)
	i += sprite_width
	}



/*
part_type_scale(global.laser_particle,temp_scale_x,1); 
part_type_speed(global.laser_particle,phy_speed,phy_speed,0,5);  
part_type_orientation(global.laser_particle,-phy_rotation,-phy_rotation,0,0.1,1);
part_type_direction(global.laser_particle,-phy_rotation,-phy_rotation,0,0);
part_type_color3(global.laser_particle,c_white,color,c_black);
part_particles_create(global.part_system_below, temp_pos_x, temp_pos_y, global.laser_particle, 5);