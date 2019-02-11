event_inherited()

if scr_timer(20)
	closest_ship = scr_rocket_find_target_in_arc(obj_player,-phy_rotation,360,seek_range)
	
if scr_exists(closest_ship) and owner.phy_active == true{
	obj_health = 0
	}
	
if obj_health <= 0{
	with(owner)
		obj_health = 0;

	
	boom = instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
	boom.radius = 200
	boom.damage = 20
	}