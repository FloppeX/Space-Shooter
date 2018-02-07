event_inherited();

turn_timer -= 1;

if turn_timer <= 0{
	target = scr_rocket_find_target_in_arc(target_type,-phy_rotation,targeting_arc,seek_range)
	if target != noone
		var target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
	else target_dir = -phy_rotation
	target_dir += random(spread)-0.5*spread;
	var angle_diff = angle_difference(-phy_rotation,target_dir)
	physics_apply_local_force(0,0,0,force*sign(angle_diff))
	}

/*
if target != noone and turn_timer <= 0{
	var target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
	target_dir += random(spread)-0.5*spread;
	var angle_diff = angle_difference(-phy_rotation,target_dir)
	physics_apply_local_force(0,0,0,force*sign(angle_diff))
	turn_timer = turn_timer_base
	}
	*/
	
// Sprite

var i = irandom(2)
switch(i){
		case 0 : sprite_index = spr_lightning_1 break;
		case 1 : sprite_index = spr_lightning_2 break;
		case 2 : sprite_index = spr_lightning_3 break;
	}
	
// Particle effect

part_type_speed(bullet_glow_particle,0,0,0,0.3);  
part_type_color2(bullet_glow_particle,color,c_black);
part_type_scale(bullet_glow_particle,bullet_scale,bullet_scale)
part_type_direction(bullet_glow_particle,-phy_rotation,-phy_rotation,0,0);
part_type_life(bullet_glow_particle,30,60);
part_particles_create(global.part_system_below, phy_position_x, phy_position_y, bullet_glow_particle, 6);