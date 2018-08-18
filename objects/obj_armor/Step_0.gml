event_inherited()

if obj_health <= 0.75 * max_health
	sprite_index = spr_armor_damage_1
	
if obj_health <= 0.5 * max_health
	sprite_index = spr_armor_damage_2
	
if obj_health <= 0.25 * max_health
	sprite_index = spr_armor_damage_3

if obj_health <= 0{
	with(module_holder)
		module  = noone
		
	var temp_angle_offset = irandom(360)
	for(var i = 0; i < array_length_1d(debris_parts); i+=1;){
		tempdir = i * 360/(array_length_1d(debris_parts)) + temp_angle_offset
		tempdist = random(10) + 10
		debris = instance_create_depth(phy_position_x+lengthdir_x(tempdist,tempdir),phy_position_y+lengthdir_y(tempdist,tempdir),5,obj_debris); //we create a particle relative to the object, offset by the proper amount
		debris.phy_speed_x = owner.phy_speed_x
		debris.phy_speed_y = owner.phy_speed_y
		debris.sprite_index = debris_parts[i]
		}
	instance_destroy();
	}