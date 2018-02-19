// Needs to be changed to a for-to statement using an array of debris particles
var temp_angle_offset = irandom(360)
for(var i = 0; i < array_length_1d(debris_parts); i+=1;){
	tempdir = i * 360/(array_length_1d(debris_parts)) + temp_angle_offset
	tempdist = random(10) + 10
	debris = instance_create_depth(phy_position_x+lengthdir_x(tempdist,tempdir),phy_position_y+lengthdir_y(tempdist,tempdir),5,obj_debris); //we create a particle relative to the object, offset by the proper amount
	debris.phy_speed_x = phy_speed_x
	debris.phy_speed_y = phy_speed_y
	debris.sprite_index = debris_parts[i]
	}
	
var temp_angle_offset = irandom(360)
for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	if module_holders[i].module != noone{
		debris = instance_create_depth(module_holders[i].module.phy_position_x,module_holders[i].module.phy_position_y,5,obj_debris); //we create a particle relative to the object, offset by the proper amount
		debris.phy_speed_x = module_holders[i].module.phy_speed_x
		debris.phy_speed_y = module_holders[i].module.phy_speed_y
		debris.sprite_index = module_holders[i].module.sprite_index
	}
}