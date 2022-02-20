/// @description Pause game

if (global.game_state == states.playing) {
	global.game_state = states.paused
	audio_play_sound(snd_esc, 1, false);
	
} 
else {
	global.game_state = states.playing;
}

