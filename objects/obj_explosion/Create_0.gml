radius = 90
damage = 8
force = 30//10//100
destruction_timer = 8
radius_increase_factor = 1/destruction_timer
temp_radius = 0

mirror_x = 0;
mirror_y = 0;

temp_distance = 0;
temp_angle = 0;


//

temp_distance = irandom(temp_distance)
temp_angle = random(360)
part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);
part_particles_create(global.part_system_above,mirror_x+lengthdir_x(temp_distance,temp_angle), mirror_y+lengthdir_y(temp_distance,temp_angle), global.flame_particle, 12);


smoke_emitter = part_emitter_create(global.part_system_below);
part_emitter_region(global.part_system_below,smoke_emitter,x-40,x+40,y-40,y+40,ps_shape_ellipse,1);
part_emitter_stream(global.part_system_below,smoke_emitter,global.smoke_particle,0);



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
	
audio_play_sound_at(explosion_sound,phy_position_x,phy_position_y,0,100,800,1,0,1)