// Set zoom

//global.zoom = 320

// Wormhole

if !instance_exists(obj_wormhole){
	wormhole_end = instance_create_depth(0.5 * room_width,0.5 * room_height-300,100,obj_wormhole_level_end)
	wormhole_end.next_level = rm_space
	}