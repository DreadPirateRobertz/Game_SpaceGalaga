/// @description Move enemy

// Everytime we hit start_x/end_x bounded
// box, reverse direction.
if(global.game_state == states.playing){
	if (x <= start_x || x >= end_x) {
		// Reverse direction.
		dir *= -1;
	}

	x += spd * dir;
}

// Check if enemy has died.
if (hp <= 0) {
	instance_destroy();
}