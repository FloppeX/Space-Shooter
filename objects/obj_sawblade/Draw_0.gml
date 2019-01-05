if !scr_exists(owner)
	instance_destroy()

if !owner.visible
	exit;
	
owner_dir = point_direction(owner.phy_position_x,owner.phy_position_y,phy_position_x,phy_position_y)
owner_dist = point_distance(phy_position_x,phy_position_y,owner.phy_position_x,owner.phy_position_y)

draw_sprite_ext(spr_sawblade_arm,-1,owner.phy_position_x,owner.phy_position_y,owner_dist/22,0.5,owner_dir,c_white,1)
draw_sprite_ext(spr_sawblade_arm,-1,owner.phy_position_x,owner.phy_position_y,0.66 * owner_dist/22,0.75,owner_dir,c_white,1)
draw_sprite_ext(spr_sawblade_arm,-1,owner.phy_position_x,owner.phy_position_y,0.33 * owner_dist/22,1,owner_dir,c_white,1)
draw_sprite_ext(sprite_index,-1,phy_position_x,phy_position_y,1,1,rotation,c_white,1)
draw_sprite_ext(spr_sawblade_cover,-1,owner.phy_position_x,owner.phy_position_y,1,1,-owner.phy_rotation,c_white,1)


if global.view_mode == 2{
	draw_text(phy_position_x,phy_position_y +40,rotation_speed)
	}
/*


target_dir = point_direction(phy_position_x,phy_position_y,target_position_x,target_position_y)
target_dist = point_distance(phy_position_x,phy_position_y,target_position_x,target_position_y)

if owner.current_arm_length > 0{
	temp_force = force * sqr(target_dist) / (0.2*(owner_dist+1))
	physics_apply_impulse(0,0,lengthdir_x(temp_force,target_dir),lengthdir_y(temp_force,target_dir))
	phy_angular_velocity = 5 * rotation_force 
	}
else {
	phy_position_x = owner.phy_position_x
	phy_position_y = owner.phy_position_y
	phy_angular_velocity = rotation_force 
	}
	
draw_sprite_ext(spr_sawblade_arm,-1,owner.phy_position_x,owner.phy_position_y,owner_dist/22,0.6,owner_dir,c_white,1)
draw_sprite_ext(spr_sawblade_arm,-1,owner.phy_position_x,owner.phy_position_y,0.66 * owner_dist/22,1,owner_dir,c_white,1)
draw_sprite_ext(spr_sawblade_arm,-1,owner.phy_position_x,owner.phy_position_y,0.33 * owner_dist/22,1.4,owner_dir,c_white,1)
draw_self();
draw_sprite_ext(spr_sawblade_cover,-1,owner.phy_position_x,owner.phy_position_y,1,1,-owner.phy_rotation,c_white,1)

if global.view_mode == 2{
	draw_text(phy_position_x,phy_position_y +40,owner.current_arm_length)
	draw_sprite(spr_crosshair,-1,phy_position_x,phy_position_y)
	draw_sprite(spr_crosshair,-1,owner.phy_position_x,owner.phy_position_y)
	}