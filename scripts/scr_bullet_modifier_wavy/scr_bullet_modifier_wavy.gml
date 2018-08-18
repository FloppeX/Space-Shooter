var t = 10 * timer mod 360;
var force = 10
var dir 

var pulling_force = force * dsin(t+90);

physics_apply_local_force(0,0,0,pulling_force)
