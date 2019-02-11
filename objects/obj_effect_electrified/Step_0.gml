destruction_timer -= 1
if instance_exists(target){
	x = target.phy_position_x
	y = target.phy_position_y
	target.disabled_timer = 10
	target.add_thrust = 0
	
	// Particle effect
	effect_timer -= 1
	if effect_timer <= 0{
		var i = irandom(2)
		switch (i){
				case 0: part_type_sprite(global.lightning_particle,spr_lightning_1,false,false,false); break;
				case 1: part_type_sprite(global.lightning_particle,spr_lightning_2,false,false,false); break;
				case 2: part_type_sprite(global.lightning_particle,spr_lightning_3,false,false,false); break;
			}
		part_type_color2(global.lightning_particle,color,c_black);
		part_type_orientation(global.lightning_particle,0,360,0,0,0);
		part_particles_create(global.part_system_above,x,y,global.lightning_particle, 8);
		effect_timer = effect_delay
		}
	}
	

// Delete other electrification objects on the same target

other_electricity = instance_place(x,y,obj_effect_electrified)
if other_electricity != noone
	if other_electricity.destruction_timer > destruction_timer
		instance_destroy();

	
if destruction_timer <= 0{
	if instance_exists(target)
		target.controls_disabled = false
	instance_destroy();
	}