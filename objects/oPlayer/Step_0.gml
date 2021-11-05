/// @description oPlayer movement
// You can write your code in this editor

var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var jump = keyboard_check_pressed(vk_space);
var dash = keyboard_check_pressed(vk_shift);


var onGround = place_meeting(x, y + 1, oWall);
var againstWall = place_meeting(x - 3, y, oWall) - place_meeting(x + 3, y, oWall);

// Calculate Movement
var move = key_right - key_left;

dashtime = max(dashtime - 1, 0);

horizontalsp = move * walkspeed;
verticalsp = grv + verticalsp;


// movement for when the player is against the wall
if (againstWall != 0) {
	grv = 0.1; 
	
	if (jump) {
		verticalsp = -5;
		horizontalsp = -10 * move;
	}
}
else {
	grv = 0.3;
}

// movement for when player is on the ground
if (onGround) {
		if (jump) verticalsp = -7;
} 


if(dash){
	dashtime = 10;
	horizontalsp = move * dashsp;
}
if (dashtime > 0) {
	verticalsp = 0;
}
// Horizontal Movement 
if (place_meeting (x + horizontalsp , y ,oWall)){
	while(!place_meeting(x + sign(horizontalsp) , y ,oWall)){
		x = x + sign(horizontalsp);
	}
	horizontalsp = 0;
}
x = x + horizontalsp;

// Vertical Movement
if (place_meeting (x , y + verticalsp ,oWall)){
	while(!place_meeting(x , y + sign(verticalsp) ,oWall)){
		y = y + sign(verticalsp);
	}
	verticalsp = 0;
}
y = y + verticalsp;

// makes character face the correct way
if (horizontalsp != 0) image_xscale = sign(horizontalsp);

//changes animation based on movement
if (onGround) {
	sprite_index = sPlayer
}
if (dashtime > 0){
	sprite_index = sPlayerDash;
}
if (dashtime = 0){
	sprite_index = sPlayer;
}