/// @description Change Ship Color
if(obj_player.sprite_index = spr_player_blue){
	obj_player.sprite_index = spr_player_red;
}
else {
	obj_player.sprite_index = spr_player_blue;

}
audio_play_sound(snd_colorswitch, 1, false);