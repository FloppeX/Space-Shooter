event_inherited();

if owner.controls_disabled
	exit;

var spray_thrust = 4
var temp_dir = angle_difference(-owner.phy_rotation,point_direction(owner.phy_position_x,owner.phy_position_y,phy_position_x,phy_position_y))//point_direction(phy_position_x,phy_position_y,phy_position_xprevious,phy_position_yprevious)
temp_dir = round( temp_dir / 91 ) * 90 // round to nearest multiple of 90
//var spray_direction = owner.lateral_drift_direction * sign(owner.drift_resistance_force)
distance_to_com = point_distance(owner.phy_position_x,owner.phy_position_y,phy_position_x,phy_position_y)

if abs(owner.rotation_value) > 0.1
	target_angle = -(owner.phy_rotation + temp_dir + 90 * sign(owner.rotation_value))//-offset_angle //-owner.phy_rotation +offset_angle + temp_dir
else target_angle = -owner.phy_rotation

if abs(owner.rotation_value) > 0.1{
	var spray_offset_distance = 7
	var spray_offset_angle = 180
	part_type_speed(global.thruster_spray_particle,spray_thrust,spray_thrust,0,0);
	//var temp_dir = point_direction(phy_position_xprevious,phy_position_yprevious,phy_position_x,phy_position_y)
	part_type_direction(global.thruster_spray_particle,180-phy_rotation-20,180-phy_rotation+20,0,2);
	part_type_alpha2(global.thruster_spray_particle,owner.alpha,0);
	part_particles_create(global.part_system_below , phy_position_x+lengthdir_x(spray_offset_distance,-phy_rotation+spray_offset_angle), phy_position_y+ lengthdir_y(spray_offset_distance,-phy_rotation+spray_offset_angle), global.thruster_spray_particle, 8);
	}
	

//audio_emitter_gain(module_audio_emitter, add_thrust);