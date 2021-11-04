/// @description creating bullet
var flipdir = (mouse_x > x)*2 - 1;
var dir = point_direction( x, y, mouse_x, mouse_y);

instance_create_layer(x, y, "Instances", oBullet);