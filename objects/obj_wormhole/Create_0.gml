effect_sprite = spr_wormhole_31
rotation = 0
rotation_speed = 1.5
hue = random(255)
hue_shift_interval = 1
hue_shift_timer = 0
hue_shift_amount = 1
color = 0

particle_speed = random(2)-1// 0.9
particle_speed_change = random(0.02) * -sign(particle_speed)// -0.015

death_timer = 60
done_warping = false


wormhole_particle = part_type_create();
part_type_sprite(wormhole_particle,effect_sprite,false,false,false);            
part_type_size(wormhole_particle,1,1,-0.04,0);                   
part_type_scale(wormhole_particle,1,1);                     
part_type_color3(wormhole_particle,c_white,color,c_black);
part_type_alpha2(wormhole_particle,1,0);
part_type_speed(wormhole_particle,0,0,0,0);         
part_type_direction(wormhole_particle,0,0,0,1);            
part_type_orientation(wormhole_particle,0,0,0,0,1);      
part_type_blend(wormhole_particle,false);                      
part_type_life(wormhole_particle,120,120);
