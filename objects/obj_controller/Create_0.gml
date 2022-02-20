/// @description 

// Seed random number generator.
randomize();

// Game state.
enum states {
	playing,
	paused,
	gameover
};

enum colors {
	none,
	red,
	blue 
};

//Setting game state
global.game_state = states.playing;
//Set Score
score = 0;
//game_over sound counter 
counter = 0;
//X Bomb Counter
xBomb = 0;
//Set this for xBomb Logic
scoreTracker = 0;

xB = noone;
//Pause Menu Options
pauseOption = ["Resume", "Quit", "Restart"];
pauseOptionSelected = 0;
//Wanted to display a game over in the middle of screen then have it disappear 
//Also wanted it to appear in top right and then menu to display in middle with limited options from full PAUSE menu
