
var temp_angle_offset = irandom(360)
for(var i = 0; i < array_length_1d(debris_parts); i+=1;){
	tempdir = i * 360/(array_length_1d(debris_parts)) + temp_angle_offset
	tempdist = random(30) + 30
	debris = instance_create_depth(phy_position_x+lengthdir_x(tempdist,tempdir),phy_position_y+lengthdir_y(tempdist,tempdir),5,obj_debris); //we create a particle relative to the object, offset by the proper amount
	debris.phy_speed_x = phy_speed_x
	debris.phy_speed_y = phy_speed_y
	debris.sprite_index = debris_parts[i]
	}
	
var temp_angle_offset = irandom(360)
for(var i = 0; i < array_height_2d(modules); i+=1;){
	if modules[i,0] != noone{
		tempdir = i * 360/(array_height_2d(modules)) + temp_angle_offset
		tempdist = random(30) + 30
		debris = instance_create_depth(modules[i,0].phy_position_x+lengthdir_x(tempdist,tempdir),modules[i,0].phy_position_y+lengthdir_y(tempdist,tempdir),5,obj_debris); //we create a particle relative to the object, offset by the proper amount
		debris.phy_speed_x = modules[i,0].phy_speed_x
		debris.phy_speed_y = modules[i,0].phy_speed_y
		debris.sprite_index = modules[i,0].sprite_index
	}
}