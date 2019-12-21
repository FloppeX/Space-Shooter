target_object = obj_enemy_ship_new

if hit_enemy{
	victim = collision_line(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(20,-phy_rotation),phy_position_x+lengthdir_x(10,-phy_rotation),target_object,false,true)
	if victim != noone
		with(victim){
			//instance_change(obj_enemy_ship_team_2,1)
			target_object = obj_enemy_ship_team_1_new
			}
	}