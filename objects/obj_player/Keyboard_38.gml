/// @description Move player up in space.

if (room != rm_level_1 && global.game_state == states.playing) {
	y -= spd;
}