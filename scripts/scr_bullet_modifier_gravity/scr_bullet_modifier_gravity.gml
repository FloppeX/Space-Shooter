color = c_blue

var radius = 100

var list = ds_list_create();
var num = collision_circle_list(x, y, radius,obj_parent_physical,1,1, list, false);
if num > 0{
    for (var i = 0; i < num; i+=1;){
        with(list[| i]){
			var tempdir = point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y)
			var force = 5
			var x_force = lengthdir_x(force,tempdir)
			var y_force = lengthdir_y(force,tempdir)
			physics_apply_impulse(phy_position_x,phy_position_y,x_force,y_force)
			}
        }
    }
ds_list_destroy(list);