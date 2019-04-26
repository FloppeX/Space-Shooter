event_inherited()

bullet_scale = 0.8 + (damage/4)
draw_scale = bullet_scale

if range <= 0{
	instance_destroy();
	exit;
	}
			
// Movement

travel_direction = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
phy_rotation = -point_direction(0, 0, phy_speed_x, phy_speed_y)

// Hit an enemy

if hit_enemy == true{
	//
	temp_length = 0
	temp_distance = point_distance(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	while temp_length < 100 and (instance_place(phy_position_x+lengthdir_x(temp_distance-temp_length,-phy_rotation),phy_position_y+lengthdir_y(temp_distance-temp_length,-phy_rotation),obj_parent_physical))
		temp_length += 1
	phy_position_x = phy_position_x+lengthdir_x((temp_distance-temp_length),-phy_rotation)
	phy_position_y = phy_position_y+lengthdir_y((temp_distance-temp_length),-phy_rotation)
	part_type_size(global.part_weapon_splat,2+4*bullet_scale,2+4*bullet_scale,-0.01,1); 
	part_type_life(global.part_weapon_splat,2,8); 
	part_type_color1(global.part_weapon_splat,color); 
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
