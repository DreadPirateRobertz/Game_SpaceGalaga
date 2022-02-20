/// @description Kill & Track Player
randomise()
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);	
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (global.game_state == states.playing) {
	if (x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h)) {
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
			bullet.sprite_index = spr_bullet_blue;
			bullet.atk = atk;
			//Fire at Player
			if(instance_exists(obj_player)) bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
		}
	}


alarm[0] = room_speed/5;