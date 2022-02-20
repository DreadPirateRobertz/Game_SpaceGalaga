/// @description Enemy creation

randomize()
// Health, attack he gives out, speed,
// and direction (moving left or right).
hp = 3;
atk = 3;
spd = 8;

path_start(bluePath, spd, path_action_reverse, false);

//Shooting
alarm[0] = room_speed/5;

