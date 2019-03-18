var xposition = argument0
var yposition = argument1
var radius = argument2
var damage = argument3
var force = argument4

new_explosion = instance_create_depth(phy_position_x,phy_position_y,-10,obj_explosion)
new_explosion.damage = damage
new_explosion.force = force

explosion_fixture = physics_fixture_create();
physics_fixture_set_circle_shape(explosion_fixture,radius)
physics_fixture_set_sensor(explosion_fixture,true)
physics_fixture_set_density(explosion_fixture,0)
physics_fixture_set_restitution(explosion_fixture,0)
physics_fixture_set_linear_damping(explosion_fixture,0)
physics_fixture_bind(explosion_fixture,new_explosion)
physics_fixture_delete(explosion_fixture)