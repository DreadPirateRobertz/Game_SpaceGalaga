/// @description X-BOMB KILLS ALL ENEMIES IN VIEW

var cam = view_camera[0];
var x1 = camera_get_view_x(cam);
var y1 = camera_get_view_y(cam);
var x2 = x1 + camera_get_view_width(cam);
var y2 = y1 + camera_get_view_height(cam);



if(xBomb > 0 && instance_exists(obj_player)){
	var counter = 0;
		for(var i = 0; i < instance_number(obj_enemy); i++){
			enemy[i] = instance_find(obj_enemy, i);
			if( point_in_rectangle(enemy[i].x, enemy[i].y, x1, y1, x2, y2)){
				enemyArr[counter] = enemy[i];
				counter++;
			}
		}
	
		if(counter > 0){
		    for(var i = 0; i < array_length(enemyArr); i++){
				instance_destroy(enemyArr[i], true);	
			}
		}
		xBomb--;
}