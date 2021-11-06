/// @description Insert description here
// You can write your code in this editor
horizontalsp = 0;
verticalsp = 0;
grv = 0.3;
walkspeed = 4;

dashsp = 15;
dashtime = 0;
dashCooldown = 0;
extraJump = true;
canDash = false;

// Mapping wasd to arrow keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
