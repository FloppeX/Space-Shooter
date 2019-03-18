destruction_timer -= 1;

if destruction_timer == 7{
	var list = ds_list_create();
	var num = instance_place_list(x, y, obj_parent_physical, list, false);
	if num > 0
		for (var i = 0; i < num; i+=1;){
			list[| i].obj_health -= damage
			list[| i].disabled_timer += 20
			}
	ds_list_destroy(list);
	}

if destruction_timer >= 0{
	var angle,angle_step = 5
	if instance_place(phy_position_x,phy_position_y,obj_parent_physical){
	    for (angle = 0; angle < 360; angle+= angle_step;){
	        collision_coords = scr_collision_line_point(phy_position_x,phy_position_y,phy_position_x+lengthdir_x(temp_radius,angle),phy_position_y+lengthdir_y(temp_radius,angle),obj_parent_physical,1,1)
			if collision_coords[0] != noone{
				var applied_damage = false
				x_force = lengthdir_x(force,angle)
				y_force = lengthdir_y(force,angle)
				with(collision_coords[0]){
					physics_apply_impulse(other.collision_coords[1],other.collision_coords[1],other.x_force,other.y_force)
					//disabled_timer += 1
					}
				part_type_scale(global.part_weapon_splat,0.1,0.1);      
				part_particles_create_color(global.part_system_above,collision_coords[1] ,collision_coords[2] , global.part_weapon_splat,c_lime, 6);
		        
				}
			}
	    }
	}


// Complicated way of doing it...
/*
var list = ds_list_create();
var num = instance_place_list(x, y, obj_parent_physical, list, false);
if num > 0{
    for (var i = 0; i < num; i+=1;){
        var collision_coords = scr_collision_line_point(phy_position_x,phy_position_y,list[| i].phy_position_x,list[| i].phy_position_y,obj_parent_physical,1,1)
		part_type_scale(global.part_weapon_splat,0.1,0.1);      
		part_particles_create_color(global.part_system_above,collision_coords[0] ,collision_coords[1] , global.part_weapon_splat,c_lime, 6);
        }
    }
ds_list_destroy(list);
	
	*/


//
/*
if destruction_timer == 0
	for(var i=0;i<instance_number(obj_parent_physical);i+=1){
		temp_instance = instance_find(obj_parent_physical, i)
		if point_distance(phy_position_x,phy_position_y,temp_instance.phy_position_x,temp_instance.phy_position_y) < radius
			with(temp_instance){
				obj_health -= other.damage
				temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
				var x_force = lengthdir_x(other.force,temp_dir)
				var y_force = lengthdir_y(other.force,temp_dir)
				physics_apply_local_impulse(phy_position_x,phy_position_y,x_force,y_force)
				}
		}
*/


if destruction_timer == 0{
	scr_explosion_smoke_particles(10)
	}


if destruction_timer <= -300
	instance_destroy();

