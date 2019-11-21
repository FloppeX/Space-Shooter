/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var player_segment = instance_place(phy_position_x,phy_position_y,obj_ship_segment_player)
if scr_exists(player_segment){
	player_segment.owner.credits += 1
	audio_play_sound_on(player_segment.owner.ship_audio_emitter,snd_collect_item_2,0,1)
	instance_destroy();
	}
