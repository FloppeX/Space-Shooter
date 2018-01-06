// Bullet properties

obj_rotation = 0;

range = 640;
timer = range;

damage = 10;

invisible = false

hit_enemy = false;

color = c_lime

bullet_glow = part_type_create();
bullet_glow = global.bullet_glow_particle
part_type_speed(bullet_glow,1,1,0,0.3);      
