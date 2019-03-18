push_force = 0

x_old = phy_position_x
y_old = phy_position_y

if timer <= 0
	instance_destroy();
timer -= 1;


var temp_dist = 0
var victim = noone
while (temp_dist <= range and victim = noone){
	temp_dist += sprite_width
	victim = instance_place(phy_position_x+lengthdir_x(temp_dist,-phy_rotation),phy_position_y+lengthdir_y(temp_dist,-phy_rotation),obj_parent_physical)
	}
if victim != noone{
	collision_coords = scr_collision_line_point(phy_position_x+lengthdir_x(temp_dist-sprite_width,-phy_rotation),phy_position_y+lengthdir_y(temp_dist-sprite_width,-phy_rotation),phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation),obj_parent_physical,1,1)
	if collision_coords[0] != noone{
		phy_position_x = collision_coords[1]
		phy_position_y = collision_coords[2]
		}
	}
else {
	phy_position_x = phy_position_x+lengthdir_x(range,-phy_rotation)
	phy_position_y = phy_position_y+lengthdir_y(range,-phy_rotation)
	}
		
if hit_enemy == true{
	part_particles_create_color(global.part_system_above, phy_position_x, phy_position_y, global.part_weapon_splat,color, 6);
	damage_number = instance_create_depth(phy_position_x,phy_position_y,-1,obj_damage_number)
	damage_number.damage = damage;
	damage_number.color = color;
	}

shot_distance = point_distance(x_old,y_old,phy_position_x,phy_position_y)
/*var i = 0
while victim == noone and i < range{
	victim = instance_place(phy_position_x,phy_position_y,obj_parent_physical)
	i += sprite_width
	}



/*
part_type_scale(global.laser_particle,temp_scale_x,1); 
part_type_speed(global.laser_particle,phy_speed,phy_speed,0,5);  
part_type_orientation(global.laser_particle,-phy_rotation,-phy_rotation,0,0.1,1);
part_type_direction(global.laser_particle,-phy_rotation,-phy_rotation,0,0);
part_type_color3(global.laser_particle,c_white,color,c_black);
part_particles_create(global.part_system_below, temp_pos_x, temp_pos_y, global.laser_particle, 5);