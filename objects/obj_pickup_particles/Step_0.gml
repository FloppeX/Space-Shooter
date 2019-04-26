/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var player = instance_place(phy_position_x,phy_position_y,obj_player)
if scr_exists(player){
	 player.particles += 10
	audio_play_sound_on(player.ship_audio_emitter,snd_collect_item_2,0,1)
	instance_destroy();
	}
