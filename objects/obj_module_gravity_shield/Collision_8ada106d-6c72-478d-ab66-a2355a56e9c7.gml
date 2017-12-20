/*
force_x = lengthdir_x(gravity_force,point_direction(x,y,other.x,other.y))
force_y = lengthdir_y(gravity_force,point_direction(x,y,other.x,other.y))
with (other)
    physics_apply_force(x,y,other.force_x,other.force_y)