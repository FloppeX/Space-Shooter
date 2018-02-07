// Bullet properties

phy_bullet = true

obj_rotation = 0;
travel_direction = 0;

range = 640;
timer = 0

damage = 10;

invisible = false

hit_enemy = false;

bullet_scale = 1

bullet_fixture = noone
color = c_lime

modifiers = noone

bullet_glow_particle = part_type_create();
part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);            
part_type_size(bullet_glow_particle,0.6,1.2,0,0.1);                   
part_type_scale(bullet_glow_particle,1,1);                     
part_type_color3(bullet_glow_particle,c_gray,color,c_black);
part_type_alpha3(bullet_glow_particle,0.2,0.6,0);
part_type_speed(bullet_glow_particle,0,0,0,0);         
part_type_direction(bullet_glow_particle,0,0,0,1);            
part_type_orientation(bullet_glow_particle,0,0,0,0,1);      
part_type_blend(bullet_glow_particle,true);                      
part_type_life(bullet_glow_particle,5,10);
