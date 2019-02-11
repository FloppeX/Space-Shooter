// Description text

modifier_description = ("Brawler")

// Modifier script

if !phy_active
	exit;

var punch_damage = 15
var enemy_ship = instance_place(phy_position_x,phy_position_y,obj_enemy_ship)
if scr_exists(enemy_ship) and enemy_ship.phy_active == true{
	with(enemy_ship){
		temp_dir = point_direction(other.phy_position_x,other.phy_position_y,phy_position_x,phy_position_y)
		var x_force = lengthdir_x(100,temp_dir)
		var y_force = lengthdir_y(100,temp_dir)
		physics_apply_impulse(other.phy_position_x,other.phy_position_y,x_force,y_force)
		}
	audio_play_sound_on(ship_audio_emitter,snd_punch,0,1)
	enemy_ship.obj_health -= punch_damage
	damage_number = instance_create_depth(enemy_ship.phy_position_x,enemy_ship.phy_position_y,-1,obj_damage_number)
	damage_number.damage = punch_damage;
	}