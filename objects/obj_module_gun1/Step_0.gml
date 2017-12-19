event_inherited();
barrel_length = 10
//

bullet_timer -= 1;

if shoot and bullet_timer <= 0{
	victim = collision_line(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation),obj_enemy_ship,true,true)
	if victim == noone{
		draw_set_color(c_blue)
		draw_line(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),phy_position_x+lengthdir_x(range,-phy_rotation),phy_position_y+lengthdir_y(range,-phy_rotation))
		}
	else{
		while (collision_line(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),phy_position_x+lengthdir_x(range-temp_length,-phy_rotation),phy_position_y+lengthdir_y(range-temp_length,-phy_rotation),obj_enemy_ship,true,true))
			temp_length -= 1
		draw_line(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),phy_position_x+lengthdir_x(range-temp_length,-phy_rotation),phy_position_y+lengthdir_y(range-temp_length,-phy_rotation))
		victim.obj_health -= 1
	bullet_timer = bullet_interval;
	}
}
shoot = false