//draw_line_width_color(x_old,y_old,phy_position_x,phy_position_y,6,c_yellow,c_yellow)
/*
if collision_coords[0] != noone
	draw_circle_color(collision_coords[0].phy_position_x,collision_coords[0].phy_position_y,50,c_fuchsia,c_red,1)
*/
if timer > 0 
	exit
part_type_scale(laser_glow_particle,shot_distance/sprite_width,damage/sprite_height);                     
part_type_color2(laser_glow_particle,color,color);
part_type_alpha3(laser_glow_particle,0.05,0.1,0);
part_type_speed(laser_glow_particle,0,0,0,0.1);         
part_type_direction(laser_glow_particle,0,0,0,0);            
part_type_orientation(laser_glow_particle,-phy_rotation,-phy_rotation,0,0,1);    

part_particles_create(global.part_system_above,x_old+lengthdir_x(0.5 * shot_distance,-phy_rotation), y_old+lengthdir_y(0.5 * shot_distance,-phy_rotation), laser_glow_particle,6);
