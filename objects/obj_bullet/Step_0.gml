timer += 1

// Bullet stuff
range -= phy_speed;
phy_bullet = true;
bullet_scale = 0.5+ 0.5*(damage/6)

if range <= 0{
	instance_destroy();
	exit;
	}
	

// Apply effects of modifiers

for(var i = 0; i < array_length_1d(modifiers); i+=1;)
	if modifiers[i,0] != noone
		script_execute(modifiers[i,0])
		
// TEST

//if phy_speed < max_speed
//		physics_apply_local_force(0,0,10,0)
		
		
// Movement

travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
phy_rotation = -point_direction(0, 0, phy_speed_x, phy_speed_y)

// Particle effect
/*
part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);    
part_type_color2(bullet_glow_particle,color,c_black);
part_type_scale(bullet_glow_particle,bullet_scale,bullet_scale)
part_type_direction(bullet_glow_particle,-phy_rotation,-phy_rotation,0,0);
part_type_life(bullet_glow_particle,2,3);
part_particles_create(global.part_system_below, phy_position_x, phy_position_y, bullet_glow_particle, 8);
*/
// Hit an enemy

if hit_enemy == true{
	//
	temp_length = 0
	temp_distance = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	while temp_length < 100 and (instance_place(phy_position_x+lengthdir_x(temp_distance-temp_length,-phy_rotation),phy_position_y+lengthdir_y(temp_distance-temp_length,-phy_rotation),obj_parent_physical))
		temp_length += 1
	phy_position_x = phy_position_x+lengthdir_x((temp_distance-temp_length),-phy_rotation)
	phy_position_y = phy_position_y+lengthdir_y((temp_distance-temp_length),-phy_rotation)
	part_particles_create_color(global.part_system_above, phy_position_x, phy_position_y, global.part_weapon_splat,color, 6);
	
	//
	//part_particles_create_color(global.part_system_above, phy_position_x+lengthdir_x(+10,-phy_rotation), phy_position_y+ lengthdir_y(+10,-phy_rotation), global.part_weapon_splat,color, 6);
	damage_number = instance_create_depth(phy_position_x,phy_position_y,-1,obj_damage_number)
	damage_number.damage = damage;
	damage_number.color = color;
	instance_destroy();
	exit;
	}

// Wrap movement

scr_find_mirror_positions();

scr_wrap_room();
