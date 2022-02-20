/// @description Move ship right

// Move right until the ship hits
// the right wall.
// Since pivot position is in the 
// middle, take that into account
// in the math.

var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);

if (global.game_state == states.playing && x < room_width - sprite_width / 2) {
	x += spd;
}