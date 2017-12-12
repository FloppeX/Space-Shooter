if bullet_timer <= 0{
			bullet = instance_create_depth(x,y,10,bullet_type);
			bullet.phy_rotation = -obj_rotation;
			bullet.phy_speed_x = hspeed
			bullet.phy_speed_y = vspeed
			with(bullet)
				physics_apply_local_impulse(0, 0, 30,0)
			bullet_timer = bullet_interval;
			}
shoot = false