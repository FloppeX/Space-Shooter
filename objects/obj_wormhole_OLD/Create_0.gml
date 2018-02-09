effect_sprite = spr_wormhole_2
rotation = 0
rotation_speed = 10
hue = random(255)
hue_shift_speed = 2
color = make_color_hsv(hue,255,255)


wormhole_particle = part_type_create();
part_type_sprite(wormhole_particle,effect_sprite,false,false,false);            
part_type_size(wormhole_particle,1,1,0,00);                   
part_type_scale(wormhole_particle,1,1);                     
part_type_color2(wormhole_particle,color,c_black);
part_type_alpha3(wormhole_particle,0,0.1,0);
part_type_speed(wormhole_particle,0,0,0,0);         
part_type_direction(wormhole_particle,0,0,0,1);            
part_type_orientation(wormhole_particle,0,0,0,0,1);      
part_type_blend(wormhole_particle,false);                      
part_type_life(wormhole_particle,1,10);
