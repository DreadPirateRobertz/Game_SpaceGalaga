/// @description Move enemy

// Check if enemy has died.
if (hp <= 0) {
	instance_destroy();
}
if(instance_exists(obj_player)) image_angle = point_direction(x, y, obj_player.x, obj_player.y);

if(global.game_state != states.playing) {	
	path_speed = 0;
}
//else {
//	path_speed = spd;	
//}

//Cannot get path speed to resume normally here
//I set it back to spd and it just stays still... The above logic worked on a peer's machine 
//but literally will not work on linux build it will stay at spd 0 even if played if I uncomment
//the logic above.