/// @description Bullet movement

// Only move while playing, not paused.
if (global.game_state == states.playing) {
	speed = spd;
} else {
	speed = 0;
}

var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);
if( !point_in_rectangle( x, y, x1, y1, x2, y2)){
	instance_destroy(obj_bullet_player.id, true);
}

