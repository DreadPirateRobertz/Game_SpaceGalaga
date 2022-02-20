/// @description 

// Draw score text in top left corner.
//Pause & GameOver Logic
	cam = view_camera[0];
	cam_w = camera_get_view_width(cam);
	cam_h = camera_get_view_height(cam);

if(global.game_state == states.paused || global.game_state == states.gameover){
	if(room == rm_level_1){
		cam_w = room_width;
		cam_h = room_height;
	}
	draw_set_font(fnt_messages);
	draw_set_color(c_red);
	draw_set_halign(fa_left);
	if (global.game_state == states.paused) draw_text(cam_w-100, 20, "PAUSE");	
	if (global.game_state == states.gameover) draw_text(cam_w-150, 20, "GAME OVER");	
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_rectangle(0,0, cam_w, cam_h, false);
	draw_set_alpha(1);
	draw_set_color(make_color_rgb(50, 205, 50));
	
	for(var i = 0; i < array_length(pauseOption); i++){
		var _print = "";
		if (global.game_state == states.gameover && i = 0) continue;
		if (i == pauseOptionSelected){
			_print += "> " + pauseOption[i] + " <";
		} else {
			_print += pauseOption[i];
			draw_set_alpha(.7);
		}
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w*.5, cam_h*.5 + (i*30), _print);
		draw_set_alpha(1);
	}
}
//Set Score
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_score);
	draw_set_color(c_purple);
	draw_text(20, 15, string(score));	



//X-Bomb calculator
var BOMB_AWARDED = 2000;
if (instance_exists(obj_player)) {
	repeat(floor((score-scoreTracker)/BOMB_AWARDED)) {
		scoreTracker += BOMB_AWARDED;
		xBomb++;
	}
}
//Draw X Bomb
if(room == rm_level_1) cam_w = room_width;
xB = cam_w-200; 
repeat(xBomb){
		draw_sprite(spr_bullet_player, 0, xB, 750);
		xB += 30;
}
