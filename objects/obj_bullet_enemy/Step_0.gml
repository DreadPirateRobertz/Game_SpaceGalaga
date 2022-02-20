/// @description Bullet Movement
// Only move while playing, not paused.

if (global.game_state == states.playing) {
	speed = spd;
} else {
	speed = 0;
}