/// @description Destroy bullet

// Use built-in particlel system.
// Makes fireworks where bullet is, 1/10 the size, yellow.
effect_create_above(ef_firework, x, y, 0.1, c_yellow);
effect_create_above(ef_firework,x, y, .1, make_colour_hsv(random(255), 255, 255));