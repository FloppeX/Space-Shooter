ww = sprite_get_width(sprite_index); //we need to know how wide

hh = sprite_get_height(sprite_index); //and how tall our sprite is

number_of_chunks_per_width = 3

chunk_size = ww/number_of_chunks_per_width; //this is how big your chunks will be in pixels

for (i=0;i<ww;i+=chunk_size) { //we loop 4 pixel at a time all the way across
	for (j=0;j<hh;j+=chunk_size) { //while picking all the vertical pixels in each column
		debris = instance_create_depth(phy_position_x,phy_position_y,5,obj_debris); //we create a particle relative to the object, offset by the proper amount
		tempdir = random(360)
		tempspeed = random(5)
		debris.phy_speed_x = 0.5 * phy_speed_x + lengthdir_x(tempspeed,tempdir);
		debris.phy_speed_y = 0.5 * phy_speed_y + lengthdir_y(tempspeed,tempdir);
		debris.phy_rotation = phy_rotation
		debris.spr = sprite_index; //we need to tell the particle which sprite to draw. in this case, it's drawing the sprite of the object that's creating it
		debris.chunk_size = chunk_size;
		debris.xx = i; //we'll need the particles to have these values so they can draw the right part of the sprite
		debris.yy = j;
		}
}
