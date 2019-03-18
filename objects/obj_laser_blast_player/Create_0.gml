event_inherited();

range = 320;
temp_length = 1
temp_distance = 0
timer = 1
damage = 1;
hit_enemy = false;
victim = noone;

color = c_lime

x_old = phy_position_x
y_old = phy_position_y
shot_distance = 0
collision_coords[2] = noone

laser_glow_particle = part_type_create();
part_type_sprite(laser_glow_particle,spr_laser_glow,false,false,false);            
part_type_size(laser_glow_particle,1,1,0,0);                   
part_type_scale(laser_glow_particle,1,1);                     
part_type_color2(laser_glow_particle,c_white,c_lime);
part_type_alpha3(laser_glow_particle,0.2,0.6,0);
part_type_speed(laser_glow_particle,0,0,0,0);         
part_type_direction(laser_glow_particle,0,0,0,1);            
part_type_orientation(laser_glow_particle,0,0,0,0,1);      
part_type_blend(laser_glow_particle,true);                      
part_type_life(laser_glow_particle,16,32);   