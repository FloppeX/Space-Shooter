event_inherited();

life_timer = 900

seek_range = 200
pull_force = 120

max_speed = 6

closest_ship = noone


pickup_glow_particle = part_type_create();
part_type_sprite(pickup_glow_particle,sprite_index,false,false,false);            
part_type_size(pickup_glow_particle,1.5,2,0,0.1);                   
part_type_scale(pickup_glow_particle,1,1);                     
part_type_alpha3(pickup_glow_particle,0.1,0.2,0);
part_type_speed(pickup_glow_particle,0,0,0,0);         
part_type_direction(pickup_glow_particle,0,0,0,1);            
part_type_orientation(pickup_glow_particle,0,0,0,0,1);      
part_type_blend(pickup_glow_particle,true);                      
part_type_life(pickup_glow_particle,5,10);