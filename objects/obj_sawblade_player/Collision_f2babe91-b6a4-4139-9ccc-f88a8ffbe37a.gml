//

other.obj_health -= damage

damage_number = instance_create_depth(phy_position_x,phy_position_y,-1,obj_damage_number)
damage_number.damage = damage;

play_sound = true