event_inherited();
color = c_navy;
target_type = obj_enemy_ship
targeting_arc = 90;
seek_range = 800
force = 400
spread = 40

turn_timer_base = 10
turn_timer = turn_timer_base

part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);            
part_type_size(bullet_glow_particle,0.6,1.2,0,0.1);                   
part_type_scale(bullet_glow_particle,1,1);                     
part_type_color2(bullet_glow_particle,color,c_black);
part_type_alpha3(bullet_glow_particle,0.2,0.6,0);
part_type_speed(bullet_glow_particle,0,0,0,0);         
part_type_direction(bullet_glow_particle,0,0,0,1);            
part_type_orientation(bullet_glow_particle,0,0,0,0,1);      
part_type_blend(bullet_glow_particle,true);                      
part_type_life(bullet_glow_particle,60,240);
