if bullet_timer <= 0{
			bullet = instance_create_depth(phy_position_x+lengthdir_x(barrel_length,-phy_rotation),phy_position_y+lengthdir_y(barrel_length,-phy_rotation),bullet_depth,bullet_type);
			bullet.phy_rotation = phy_rotation + random(2 * spread) - spread
			bullet.phy_speed_x = phy_speed_x + lengthdir_x(muzzle_velocity,-phy_rotation)
			bullet.phy_speed_y = phy_speed_y + lengthdir_y(muzzle_velocity,-phy_rotation)
			bullet.color = bullet_color
			
			/*with(bullet)
				physics_apply_local_impulse(0, 0, 30,0)
			*/
			bullet_timer = bullet_interval;
			}
shoot = false