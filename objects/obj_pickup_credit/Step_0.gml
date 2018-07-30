ship = instance_place(phy_position_x,phy_position_y,obj_player)
if scr_exists(ship){
	with(ship){
		credits += 1
		audio_play_sound_on(ship_audio_emitter,snd_collect_item_2,0,1)
		}
	instance_destroy();
	}
	
ship = instance_place(phy_position_x,phy_position_y,obj_enemy_ship)
if scr_exists(ship){
	with(ship)
		credits += 1
	instance_destroy();
	}


if scr_timer(20){
	closest_ship = scr_rocket_find_target_in_arc(obj_player,-phy_rotation,360,seek_range)
	if closest_ship == noone
		closest_ship = scr_rocket_find_target_in_arc(obj_enemy_ship,-phy_rotation,360,seek_range)
	}
if scr_exists(closest_ship){
	dist = point_distance(phy_position_x,phy_position_y,closest_ship.phy_position_x,closest_ship.phy_position_y)
	dir = point_direction(phy_position_x,phy_position_y,closest_ship.phy_position_x,closest_ship.phy_position_y)
	if dist <= seek_range
		physics_apply_force(phy_position_x,phy_position_y,lengthdir_x(pull_force*dist/seek_range,dir),lengthdir_y(pull_force*dist/seek_range,dir))
	}
	
scr_find_mirror_positions();

scr_wrap_room();
