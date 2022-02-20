///@description Move enemy down 30 pixels.
if(global.game_state == states.playing) y += 30;

// Reset alarm.
alarm[1] = move_down_speed;