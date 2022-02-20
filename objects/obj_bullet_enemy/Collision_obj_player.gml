/// @description Bullet collides with player

// Decrement player health by the bullet
// damage.
if(self.sprite_index == spr_bullet_red && obj_player.sprite_index != spr_player_red
|| self.sprite_index = spr_bullet_blue && obj_player.sprite_index != spr_player_blue) {
	audio_play_sound(snd_damage, 1, false);
	other.hp -= atk;
}
// Destroy this bullet.
// Also cause a Destroy event.
instance_destroy(id, true);

