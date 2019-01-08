/*
// Particle effect
part_type_sprite(pickup_glow_particle,sprite_index,false,false,false);    
part_type_color1(pickup_glow_particle,c_white);
part_type_direction(pickup_glow_particle,-phy_rotation,-phy_rotation,0,0);
part_type_life(pickup_glow_particle,2,3);
part_particles_create(global.part_system_below, phy_position_x, phy_position_y, pickup_glow_particle, 3);

*/
//gpu_set_blendenable(true)

gpu_set_blendmode(bm_add)
var temp_direction = random(360)
var temp_distance = random(4)
draw_sprite_ext(sprite_index,-1,phy_position_x+lengthdir_x(temp_distance,temp_direction),phy_position_y+lengthdir_y(temp_distance,temp_direction),3,3,-phy_rotation,c_white,0.1)
var temp_direction = random(360)
var temp_distance = random(4)
draw_sprite_ext(sprite_index,-1,phy_position_x+lengthdir_x(temp_distance,temp_direction),phy_position_y+lengthdir_y(temp_distance,temp_direction),2,2,-phy_rotation,c_white,0.2)
gpu_set_blendmode(bm_normal)
draw_self()