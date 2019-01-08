/// intercept_course(origin,target,speed)
//
//  Returns the course direction required to hit a moving target
//  at a given projectile speed, or (-1) if no solution is found.
//
//      origin      instance with position (x,y), real
//      target      instance with position (x,y) and (speed), real
//      speed       speed of the projectile, real
//
/// GMLscripts.com/license
{
    var origin,target,target_x,target_y,pspeed,dir,alpha,phi,beta;
    origin = argument0;
    target = argument1;
    pspeed = argument2;
	target_x = scr_wrap_closest_x(target);
	target_y = scr_wrap_closest_y(target);
    dir = point_direction(origin.phy_position_x,origin.phy_position_y,target_x,target_y);
    alpha = target.phy_speed / pspeed;
    phi = degtorad(-target.phy_rotation - dir);
    beta = alpha * sin(phi);
    if (abs(beta) >= 1)
        return (-1);
    dir += radtodeg(arcsin(beta));
	dir += 360
	dir = dir mod 360
    return dir;
}