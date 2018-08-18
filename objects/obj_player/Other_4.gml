/*	
phy_rotation = 0
for(var i = 0; i < array_length_1d(module_holders); i+=1;){
	if scr_exists(module_holders[i].module){
		with(module_holders[i].module){
			phy_position_x = other.phy_position_x + lengthdir_x(placement_offset_distance,-other.phy_rotation+placement_offset_angle)
			phy_position_y = other.phy_position_y + lengthdir_y(placement_offset_distance,-other.phy_rotation+placement_offset_angle)
			phy_rotation = other.phy_rotation + offset_angle
			joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 10,3,1,0);
			}
		}
	}
*/

phy_rotation = -90

for(var i = 0; i < array_height_2d(modules); i+=1;){
	modules[i,0] = modules[i,1].module // update the array to include each module from each module holder 
	if scr_exists(modules[i,0]){
		modules[i,0].phy_position_x = phy_position_x + lengthdir_x(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,0].phy_position_y = phy_position_y + lengthdir_y(modules[i,3],-phy_rotation + modules[i,2])
		modules[i,0].phy_rotation = phy_rotation + modules[i,0].offset_angle
		with (modules[i,0])
			joint = physics_joint_revolute_create(other, id,phy_position_x,phy_position_y,0, 360, 0, 10,3,1,0);
		}
	}