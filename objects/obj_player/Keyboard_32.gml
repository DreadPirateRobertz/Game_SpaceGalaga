/// @description Shoot bullets

// Create a new bullet with the same damage
// as the player can give.
// Control shooting with this boolean.
if (can_shoot) {
	can_shoot = false;
	audio_play_sound(snd_shoot, 1, false);
	
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	bullet.atk = atk;

	// Give it an up direction and speed.
	bullet.direction = point_direction(x, y, x, y-1);
	bullet.speed = bullet.spd;

	
	// Set alarm for when we can shoot again.
	alarm[0] = shoot_delay;
}