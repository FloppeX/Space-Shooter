event_inherited();

time_counter += 1
turn_timer -= 1;

if turn_timer <= 0{
	turn_timer = turn_timer_base
	target = scr_rocket_find_target_in_arc(target_type,-phy_rotation,targeting_arc,seek_range)
	if target != noone
		var target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
	else target_dir = -phy_rotation
	target_dir += (random(spread)-0.5*spread);
	phy_speed_x = lengthdir_x(phy_speed,target_dir)
	phy_speed_y = lengthdir_y(phy_speed,target_dir)
	phy_rotation = -target_dir
	/*
	var angle_diff = angle_difference(-phy_rotation,target_dir)
	if abs(angle_diff) > 2
		physics_apply_local_force(0,0,0,force*sign(angle_diff))
	*/
	if random(100) < chance_new_branch and current_branches <= maximum_branches{
		current_branches += 1
		new_bolt = instance_create_depth(phy_position_x,phy_position_y,-10,object_index)
		var new_direction = phy_rotation + new_branch_angle * sign(random(1)-0.5)
		
		bullet_fixture = physics_fixture_create();
		physics_fixture_set_circle_shape(bullet_fixture,bullet_scale*0.5*new_bolt.sprite_width)
		physics_fixture_set_density(bullet_fixture,0.03)
		physics_fixture_set_restitution(bullet_fixture,1)
		physics_fixture_bind(bullet_fixture,new_bolt)
		physics_fixture_delete(bullet_fixture)
		
		new_bolt.phy_speed_x = lengthdir_x(phy_speed,-new_direction)
		new_bolt.phy_speed_y = lengthdir_y(phy_speed,-new_direction)
		new_bolt.phy_rotation = -new_direction
		new_bolt.range = range //- (time_counter * phy_speed)
		new_bolt.damage = damage
		new_bolt.color = color
		new_bolt.maximum_branches = maximum_branches -1;
		}
	
	// Sprite
	var i = irandom(2)
	switch(i){
		case 0 : sprite_index = spr_lightning_1 break;
		case 1 : sprite_index = spr_lightning_2 break;
		case 2 : sprite_index = spr_lightning_3 break;
		}
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
	

	
// Particle effect

part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);            
part_type_size(bullet_glow_particle,0.6,1.2,0,0.1);                   
part_type_scale(bullet_glow_particle,1,1);                     
part_type_color2(bullet_glow_particle,color,c_black);
part_type_alpha3(bullet_glow_particle,0.4,0.2,0);
part_type_speed(bullet_glow_particle,0,0,0,0);         
part_type_direction(bullet_glow_particle,0,0,0,1);            
part_type_orientation(bullet_glow_particle,-phy_rotation,-phy_rotation,1,0,0);      
part_type_blend(bullet_glow_particle,true);                      
part_type_life(bullet_glow_particle,20,60);

part_particles_create(global.part_system_below, phy_position_x, phy_position_y, bullet_glow_particle, 3);