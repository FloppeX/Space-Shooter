radius = 90
damage = 15
force = 12//10//100
destruction_timer = 8
radius_increase_factor = 1/destruction_timer
temp_radius = 0

mirror_x = 0;
mirror_y = 0;

temp_distance = 0;
temp_angle = 0;

collision_coords[2] = 0
x_force = 0
y_force = 0


//

scr_find_mirror_positions();
scr_explosion_flame_particles(12)

// TEST NEW COLLISION 
/*
explosion_fixture = physics_fixture_create();
physics_fixture_set_circle_shape(explosion_fixture,radius)
physics_fixture_set_sensor(explosion_fixture,true)
physics_fixture_set_density(explosion_fixture,0)
physics_fixture_set_restitution(explosion_fixture,0)
physics_fixture_set_linear_damping(explosion_fixture,0)
physics_fixture_bind(explosion_fixture,id)
physics_fixture_delete(explosion_fixture)
*/
// Sound
var i = irandom(9)
switch (i){
	case 0: explosion_sound = snd_explosion_large_01; break;
	case 1: explosion_sound = snd_explosion_large_02; break;
	case 2: explosion_sound = snd_explosion_large_03; break;
	case 3: explosion_sound = snd_explosion_large_04; break;
	case 4: explosion_sound = snd_explosion_large_05; break;
	case 5: explosion_sound = snd_explosion_large_06; break;
	case 6: explosion_sound = snd_explosion_large_07; break;
	case 7: explosion_sound = snd_explosion_large_08; break;
	case 8: explosion_sound = snd_explosion_large_09; break;
	case 9: explosion_sound = snd_explosion_large_10; break;
	}
	
audio_play_sound_at_wrap(explosion_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)