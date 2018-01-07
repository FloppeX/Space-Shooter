if timer <= 0{
	instance_destroy();
	exit;
	}
	
timer -= 1;

victim = collision_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation),obj_enemy_ship,false,true)
if victim == noone
	victim = collision_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation),obj_asteroid,false,true)
/*	
if victim != noone{
	part_particles_create_color(global.part_system_above, victim.phy_position_x, victim.phy_position_y, global.part_weapon_splat,color, 3);
	damage_number = instance_create_depth(victim.phy_position_x,victim.phy_position_y,-1,obj_damage_number)
	damage_number.damage = damage;
	damage_number.color = color;
	}*/
	
if victim == noone{
		temp_distance = range
		temp_pos_x = phy_position_x+lengthdir_x(0.5 * temp_distance,-phy_rotation)
		temp_pos_y = phy_position_y+lengthdir_y(0.5 * temp_distance,-phy_rotation)
		temp_scale_x = range/sprite_width
		//draw_sprite_ext(spr_laser_glow,-1,phy_position_x+lengthdir_x(0.5 * temp_distance,-phy_rotation),phy_position_y+lengthdir_y(0.5 * temp_distance,-phy_rotation),range/10,1,-phy_rotation,color,1)
		}
else{
		temp_length = 1
		temp_distance = point_distance(phy_position_x,phy_position_y,victim.phy_position_x,victim.phy_position_y)
		while temp_length < 100 and (collision_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(temp_distance-temp_length,-phy_rotation),phy_position_y+lengthdir_y(temp_distance-temp_length,-phy_rotation),victim.object_index,true,true))
			temp_length += 1
		temp_pos_x = phy_position_x+lengthdir_x(0.5 * (temp_distance-temp_length),-phy_rotation)
		temp_pos_y = phy_position_y+lengthdir_y(0.5 * (temp_distance-temp_length),-phy_rotation)
		temp_scale_x = (temp_distance-temp_length)/sprite_width
		//draw_sprite_ext(spr_laser_glow,-1,phy_position_x+lengthdir_x(0.5 * (temp_distance-temp_length),-phy_rotation),phy_position_y+lengthdir_y(0.5 * (temp_distance-temp_length),-phy_rotation),(temp_distance-temp_length)/10,1,-phy_rotation,color,1)
		victim.obj_health -= damage
		temp_x_2 = phy_position_x+lengthdir_x((temp_distance-temp_length),-phy_rotation)
		temp_y_2 = phy_position_y+lengthdir_y((temp_distance-temp_length),-phy_rotation)
		part_particles_create_color(global.part_system_above, temp_x_2, temp_y_2, global.part_weapon_splat,color, 3);
		damage_number = instance_create_depth(temp_x_2,temp_y_2,-1,obj_damage_number)
		damage_number.damage = damage;
		damage_number.color = color;
		}

part_type_scale(global.laser_particle,temp_scale_x,1); 
part_type_speed(global.laser_particle,phy_speed,phy_speed,0,5);  
part_type_orientation(global.laser_particle,0,0,0,0.1,1);
part_type_direction(global.laser_particle,-phy_rotation,-phy_rotation,0,0);
part_type_color3(global.laser_particle,c_white,color,c_black);
part_particles_create(global.part_system_below, temp_pos_x, temp_pos_y, global.laser_particle, 5);