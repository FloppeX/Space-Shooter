effect_sprite = spr_wormhole
rotation = 0
rotation_speed = 1
rotation_dir_shifter = 1
hue_min = 70
hue_max = 140
hue = hue_min
color = 0;

depth = 0

wormhole_segments = 10
wormhole_size = 0
particle_speed = 0//random(2)-1// 0.9
particle_speed_change = 0//random(0.02) * -sign(particle_speed)// -0.015

life_timer = 0

draw_position_x = 0
draw_position_y = 0
/*
wormhole_particle = part_type_create();
part_type_sprite(wormhole_particle,effect_sprite,false,false,false);            
part_type_size(wormhole_particle,1,1,-0.02,0);                   
part_type_scale(wormhole_particle,1,1);                     
part_type_color3(wormhole_particle,c_white,color,c_black);
part_type_alpha2(wormhole_particle,1,0);
part_type_speed(wormhole_particle,0,0,0,0);         
part_type_direction(wormhole_particle,0,0,0,1);            
part_type_orientation(wormhole_particle,0,0,0,0,1);      
part_type_blend(wormhole_particle,false);                      
part_type_life(wormhole_particle,140,140);
