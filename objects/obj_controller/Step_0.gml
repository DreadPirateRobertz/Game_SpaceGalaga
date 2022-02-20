/// @description 
//Track Player Health and X Bombs
var hp = obj_player.hp
var xBomb = obj_player;

if(obj_player.hp > hp) obj_player.hp = hp;


// Gameover if no more enemies.
var cam = view_camera[0]
var cam_h = camera_get_view_height(cam)
//|| obj_player.y+obj_player.sprite_width <= cam_h
if (!instance_exists(obj_enemy) || !instance_exists(obj_player)) {
	if (room_exists(room_next(room))) {
		room_goto_next();
		global.game_state = states.playing
		
	} else {
		global.game_state = states.gameover;
	}
}

if (global.game_state == states.paused || global.game_state == states.gameover) {
	keyUp = keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(vk_down);
	if(keyUp || keyDown) audio_play_sound(snd_menu, 1, false);
	pauseOptionSelected += (keyDown - keyUp);
	//Makes The Wrap Around faster when the resume option is taken away on game over
	if(pauseOptionSelected >= array_length(pauseOption) && global.game_state == states.paused) pauseOptionSelected = 0;
	else if(pauseOptionSelected >= array_length(pauseOption) && global.game_state == states.gameover) pauseOptionSelected = 1;

	if (global.game_state == states.gameover) {
		if(counter == 0) {
			audio_play_sound(snd_gameover, 1, false);
			counter++;
		}
		if(pauseOptionSelected <= 0) pauseOptionSelected = array_length(pauseOption) -1;
	}
	else {
		if(pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) - 1;
	}
	enterKey = keyboard_check_pressed(vk_enter);
	if (enterKey){
		switch(pauseOptionSelected){
			case 0:
				global.game_state = states.playing;
				break;
			case 1:
				game_end();
				break;
			case 2: 
				with(all) instance_destroy();
				game_restart();
				break;
			
				}
			}	
		}
	
//No clue what I was thinking here :)
//for (var i = 0; i < instance_number(obj_enemy_red); i++){
//	enemy[i] = instance_find(obj_enemy_red, i);
//	if (enemy[i].y + enemy[i].sprite_width > room_height) global.game_state = states.gameover;
//}

