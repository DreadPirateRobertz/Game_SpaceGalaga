/// @description Move ship left

// Move left until the ship hits
// the left wall.
// Since pivot position is in the 
// middle, take that into account
// in the math.
if (global.game_state == states.playing && x > 0 + sprite_width / 2) {
	x -= spd;
}