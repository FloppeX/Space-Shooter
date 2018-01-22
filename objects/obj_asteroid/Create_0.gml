event_inherited();

phy_rotation = random(360);
phy_angular_velocity = random(200)-100
phy_speed_x = random (8)-4
phy_speed_y = random (8)-4

max_speed = 3
max_rotation_speed = 50

mirror_x = 0;
mirror_y = 0;

damage = 10
push_force = 30

child_object = obj_asteroid_medium;
obj_health = 8;
death_effect_size = 2;

secondary_color = make_colour_rgb(94,228,174)