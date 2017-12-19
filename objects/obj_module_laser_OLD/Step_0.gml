event_inherited();
barrel_length = 10
//

bullet_timer -= 1;

sprite_index = spr_module_laser

if shoot
	sprite_index = spr_module_laser2

if shoot and bullet_timer <= 0{
	victim = collision_line(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation),obj_enemy_ship,false,true)
	if victim == noone{
		draw_sprite_ext(spr_laser_glow,-1,phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),1,range/10,-phy_rotation,c_blue,1)
		}
	else{
		temp_length = 1
		temp_distance = point_distance(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),victim.phy_position_x,victim.phy_position_y)
		while temp_length < 20 and (collision_line(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),phy_position_x+lengthdir_x(temp_distance-temp_length,-phy_rotation),phy_position_y+lengthdir_y(temp_distance-temp_length,-phy_rotation),obj_enemy_ship,true,true))
			temp_length += 1
		draw_sprite_ext(spr_laser_glow,-1,phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),1,(temp_distance-temp_length)/10,-phy_rotation,c_blue,1)
		victim.obj_health -= 1
		bullet_timer = bullet_interval;
		}
}
shoot = false


