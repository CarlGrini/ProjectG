/// @description Draw and flipping player/gun

//flipping player/gun
var flipdir = (mouse_x > x)*2 - 1;
var dir = point_direction( x, y, mouse_x, mouse_y);

//draw player
draw_sprite_ext(sPlayer, 0, x, y, flipdir, 1, 0, image_blend, image_alpha);

// getting angle for gun and aiming at mouse
draw_sprite_ext(sGun, 0, x - (4 * flipdir), y, 1, flipdir, dir, image_blend, image_alpha);
