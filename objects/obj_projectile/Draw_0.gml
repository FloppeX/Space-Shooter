if global.view_mode == 2{
	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(x,y+40,depth)
	}
	
gpu_set_blendmode(bm_add)
//draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,bullet_scale*2,bullet_scale*2,-phy_rotation,color,0.1)
//draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,bullet_scale*1.5,bullet_scale*1.5,-phy_rotation,color,0.2)
draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,bullet_scale,bullet_scale,-phy_rotation,color,1)
gpu_set_blendmode(bm_normal)

if scr_exists(owner){
	draw_set_font(global.font_small_text)
	draw_set_color(c_white)
	draw_text(owner.phy_position_x,owner.phy_position_y+100,phy_speed)
	}
/*
// Particle effect
part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);    
part_type_color2(bullet_glow_particle,color,c_black);
part_type_scale(bullet_glow_particle,bullet_scale,bullet_scale)
part_type_direction(bullet_glow_particle,-phy_rotation,-phy_rotation,0,0);
part_type_life(bullet_glow_particle,2,3);
part_particles_create(global.part_system_below, phy_position_x, phy_position_y, bullet_glow_particle, 8);