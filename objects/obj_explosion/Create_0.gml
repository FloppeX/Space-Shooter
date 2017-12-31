radius = 50
damage = 3
force = 1000
destruction_timer = 1

sprite_collision_mask(sprite_index, true, 1, 0, 0, sprite_width, sprite_height, 2, 0);
instance_create_depth(x,y,-10,obj_explosion_effect)