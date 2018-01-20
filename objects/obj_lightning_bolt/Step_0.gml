step_timer -= 1

target = scr_rocket_find_target_in_arc(target_object_type,-phy_rotation,targeting_arc,seek_range)
if target != noone
	target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
else target_dir = -phy_rotation

if target != noone{
	angle_diff = angle_difference(-phy_rotation,target_dir);
	angle_diff = clamp(angle_diff,-max_turn,max_turn)
	new_dir = -phy_rotation - angle_diff
	}
else new_dir = -phy_rotation

// Add randomness
new_dir += random(spread)-0.5*spread;

//new_dir = phy_rotation

// Particle effect

part_type_sprite(global.lightning_particle,lightning_sprite,false,false,false);
part_type_color2(global.lightning_particle,color,c_black);
part_type_orientation(global.lightning_particle,-phy_rotation,-phy_rotation,0,0,0);
part_particles_create(global.part_system_below, phy_position_x, phy_position_y,global.lightning_particle, 3);
	
if step_timer == 0{
	if remaining_steps > 0{
			// create new bolt(s)
			new_bolt = instance_create_depth(phy_position_x+lengthdir_x(sprite_width-4,-phy_rotation),phy_position_y+lengthdir_y(sprite_width-4,-phy_rotation),10,obj_lightning_bolt)
			new_bolt.phy_rotation = -new_dir
			new_bolt.remaining_steps = remaining_steps-1
			if random(100) < chance_new_branch{
				new_bolt = instance_create_depth(phy_position_x+lengthdir_x(sprite_width-4,-phy_rotation),phy_position_y+lengthdir_y(sprite_width-4,-phy_rotation),10,obj_lightning_bolt)
				new_bolt.phy_rotation = -new_dir + new_branch_angle * sign(random(2)-1)
				new_bolt.remaining_steps = remaining_steps-1
				}
			}
	instance_destroy();
	}
