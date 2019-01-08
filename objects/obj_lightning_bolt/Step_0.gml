event_inherited();

time_counter += 1
turn_timer -= phy_speed;

push_force = 0;

phy_angular_velocity = 0

if turn_timer <= 0{

	turn_timer = turn_timer_base
	target = scr_rocket_find_target_in_arc(target_type,-phy_rotation,targeting_arc,seek_range)
	if target != noone
		target_dir = point_direction(phy_position_x,phy_position_y,scr_wrap_closest_x(target),scr_wrap_closest_y(target))
	else target_dir = -phy_rotation
	target_dir += (random(spread)-0.5*spread);

	phy_rotation = -target_dir
	phy_speed_x = lengthdir_x(phy_speed,-phy_rotation)
	phy_speed_y = lengthdir_y(phy_speed,-phy_rotation)

	if random(99) < chance_new_branch and maximum_branches > 0{
		maximum_branches -= 1
		new_bolt = instance_create_depth(phy_position_x,phy_position_y,-10,object_index)
		var new_direction = -(phy_rotation + (new_branch_angle * sign(random(1)-0.5)))
		new_bolt.phy_rotation = new_direction
		new_bolt.phy_speed_x = lengthdir_x(new_bolt.phy_speed,-new_bolt.phy_rotation)
		new_bolt.phy_speed_y = lengthdir_y(new_bolt.phy_speed,-new_bolt.phy_rotation)
		new_bolt.range = range //- (time_counter * phy_speed)
		new_bolt.damage = damage
		new_bolt.color = color
		new_bolt.maximum_branches = maximum_branches;
		
		}

// Sprite
var i = irandom(2)
switch(i){
	case 0 : sprite_index = spr_lightning_1 break;
	case 1 : sprite_index = spr_lightning_2 break;
	case 2 : sprite_index = spr_lightning_3 break;
	}
	// Particle effect

part_type_sprite(bullet_glow_particle,sprite_index,false,false,false);            
part_type_size(bullet_glow_particle,1,1,0,0);                   
part_type_scale(bullet_glow_particle,1,1);                     
part_type_color2(bullet_glow_particle,color,c_black);
part_type_alpha3(bullet_glow_particle,0.4,0.2,0);
part_type_speed(bullet_glow_particle,0,0,0,0);         
part_type_direction(bullet_glow_particle,0,0,0,0);            
part_type_orientation(bullet_glow_particle,-phy_rotation,-phy_rotation,0,0,0);      
part_type_blend(bullet_glow_particle,true);                      
part_type_life(bullet_glow_particle,10,30);

part_particles_create(global.part_system_below, phy_position_x, phy_position_y, bullet_glow_particle, 3);
}