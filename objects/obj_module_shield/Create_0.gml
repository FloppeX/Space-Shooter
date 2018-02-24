event_inherited();

activation_button = 5
energy_cost_base = 2

mechanism_retracted = true;
mechanism_extended = false;

depth = -12

activate_shield = false;
shield_active = false
shield_max_size = 1
shield_current_size = 0
size_change_coefficient = 8

my_shield = instance_create_depth(phy_position_x,phy_position_y,-10,obj_shield_wedge);

shield_particle = part_type_create();
part_type_sprite(shield_particle,spr_shield_wedge,0,0,0);
part_type_size(shield_particle,1,1,0,0.1);
part_type_scale(shield_particle,1,1);
part_type_color3(shield_particle,c_white,c_orange,c_black);
part_type_alpha3(shield_particle,0.05,0.07,0);
part_type_speed(shield_particle,0,0,0,0);
part_type_direction(shield_particle,0,359,0,0);
part_type_orientation(shield_particle,0,0,0,1,1);
part_type_blend(shield_particle,1);
part_type_life(shield_particle,4,6);