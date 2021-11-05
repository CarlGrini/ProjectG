/// @description oPlayer movement
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check_pressed(vk_space);
dash = keyboard_check_pressed(vk_shift);

// Calculate Movement
var move = key_right - key_left;

horizontalsp = move * walkspeed;
verticalsp = grv + verticalsp;

if (place_meeting (x, y + 1, oWall)) && (key_up = 1){
	verticalsp = -7;
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


// wall jumping

if (!place_meeting(x, y - 2, oWall) and (place_meeting(x + 3, y, oWall) or place_meeting(x - 3, y, oWall)))
{
	grv = 0.1;
	if (key_up = 1) verticalsp = -6;
}
else
{
	grv = 0.3;	
}

// dashing not working
dashtime = max(dashtime-1,0);
if(dash){
	dashtime = 10;
	horizontalsp = dashsp;
}
if (dashtime > 0 ) verticalsp = 0;
