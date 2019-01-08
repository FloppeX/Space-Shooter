event_inherited();
color = c_navy;
target_type = obj_enemy_ship
targeting_arc = 90;
seek_range =400
force = 0
spread = 0//40
step_length = 30

time_counter = 0
turn_timer_base = 3
turn_timer = 3//turn_timer_base
target_dir = -phy_rotation
phy_position_x = phy_position_x-lengthdir_x(step_length,target_dir)
phy_position_y = phy_position_y-lengthdir_y(step_length,target_dir)

chance_new_branch = 10//10
new_branch_angle = 30
maximum_branches = 5
current_branches = 0

// particle

part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);            
part_type_size(bullet_glow_particle,0.6,1.2,0,0.1);                   
part_type_scale(bullet_glow_particle,1,1);                     
part_type_color2(bullet_glow_particle,color,c_black);
part_type_alpha3(bullet_glow_particle,0.4,0.2,0);
part_type_speed(bullet_glow_particle,0,0,0,0);         
part_type_direction(bullet_glow_particle,0,0,0,1);            
part_type_orientation(bullet_glow_particle,0,0,0,0,1);      
part_type_blend(bullet_glow_particle,true);                      
part_type_life(bullet_glow_particle,60,240);
