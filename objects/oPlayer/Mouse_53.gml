/// @description Creating bullet
var flipdir = (mouse_x > x)*2 - 1;
var dir = point_direction( x, y, mouse_x, mouse_y);
var gunorigin = x - (4 * flipdir);
var x_offset = lengthdir_x(31,dir);
var y_offset = lengthdir_y(31, dir)
instance_create_layer(gunorigin + x_offset, y + y_offset, "Instances", oBullet);