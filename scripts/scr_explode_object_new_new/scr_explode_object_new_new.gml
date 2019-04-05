
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
for(var i = 0; i < array_length_1d(ship_segment); i+=1;){
	if scr_exists(ship_segment[i].module){
		tempdir = i * 360/(array_length_1d(ship_segment)) + temp_angle_offset
		tempdist = random(30) + 30
		debris = instance_create_depth(ship_segment[i].module.phy_position_x+lengthdir_x(tempdist,tempdir),ship_segment[i].module.phy_position_y+lengthdir_y(tempdist,tempdir),5,obj_debris); //we create a particle relative to the object, offset by the proper amount
		debris.phy_speed_x = ship_segment[i].module.phy_speed_x
		debris.phy_speed_y = ship_segment[i].module.phy_speed_y
		debris.sprite_index = ship_segment[i].module.sprite_index
	}
}