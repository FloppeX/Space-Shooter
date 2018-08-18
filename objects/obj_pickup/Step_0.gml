
life_timer -= 1

if life_timer <= 0
	instance_destroy();
	
if life_timer <= 300{
	if scr_timer(8) 
		if visible == true
			visible = false
		else visible = true
	}
	
if life_timer <= 300{
	if scr_timer(4) 
		if visible == true
			visible = false
		else visible = true
	}
		

if scr_exists(closest_ship){
	dist = point_distance(phy_position_x,phy_position_y,closest_ship.phy_position_x,closest_ship.phy_position_y)
	dir = point_direction(phy_position_x,phy_position_y,closest_ship.phy_position_x,closest_ship.phy_position_y)
	if dist <= seek_range
		physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(pull_force*dist/seek_range,dir),lengthdir_y(pull_force*dist/seek_range,dir))
	}
	
if scr_timer(20)
	closest_ship = scr_rocket_find_target_in_arc(obj_player,-phy_rotation,360,seek_range)
	
	
scr_find_mirror_positions();

scr_wrap_room();
