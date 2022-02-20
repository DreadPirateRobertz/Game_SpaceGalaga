/// @description Create event for Jonathan Spacepants

// Health
hp = 10;

// Speed - 3 pixels per frame, so about 180 pixels
// per second if we have a 60 FPS rate.
spd = 3;

// Damage player can cause.
atk = 1;

// Add delay to shooting so it looks better.
// Only allow 5 bullets a second.
can_shoot = true;
shoot_delay = room_speed * 0.2;

direction = point_direction(x, y, x, y-1);

// Default player color and sprite.
sprite_index = spr_player_blue;
if (room == rm_level_1) {
	color = colors.none;
} else {
	color = colors.blue;
}