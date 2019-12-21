destruction_timer -= 1

if instance_exists(target){
	x = target.phy_position_x
	y = target.phy_position_y
	target.ai_disabled_timer = 10
	
	if scr_exists(obj_player){
		target.target = obj_player
		target.target_dir = scr_wrap_direction_to_point(target.phy_position_x,target.phy_position_y,obj_player.phy_position_x,obj_player.phy_position_y)
		}
	for(var i = 0; i < array_height_2d(target.ship_segment); i+=1;)
	if scr_exists(target.ship_segment[i])
		if scr_exists(target.ship_segment[i].module)
			with(target.ship_segment[i].module)
				ready_to_shoot = false
		}
else instance_destroy();
		
// Particle effect
	effect_timer -= 1
	if effect_timer <= 0{
		part_particles_create(global.part_system_above,x,y,global.heart_particle, 1);
		effect_timer = effect_delay
		}
	

// Delete other electrification objects on the same target

other_effect = instance_place(x,y,obj_effect_charmed)
if other_effect != noone
	if other_effect.destruction_timer > destruction_timer
		instance_destroy();

	
if destruction_timer <= 0
	instance_destroy();