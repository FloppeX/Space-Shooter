death_timer -= 1
step_timer -= 1

target = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,targeting_arc)
if target != noone
	target_dir = point_direction(phy_position_x,phy_position_y,target.phy_position_x,target.phy_position_y)
else target_dir = -phy_rotation
target_dir += random(spread)-0.5*spread;

if step_timer == 0{
	if remaining_steps > 0{
			new_bolt = instance_create_depth(phy_position_x+lengthdir_x(sprite_width,-phy_rotation),phy_position_y+lengthdir_y(sprite_width,-phy_rotation),10,obj_lightning_bolt)
			new_bolt.phy_rotation = -target_dir
			new_bolt.remaining_steps = remaining_steps-1
			}
	}
		
if death_timer <= 0
	instance_destroy();