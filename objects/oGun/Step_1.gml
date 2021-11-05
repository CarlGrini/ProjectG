x = oPlayer.x;
y = oPlayer.y;

// points gun to where mouse is
image_angle = point_direction(x, y, mouse_x, mouse_y);
var offsetx = lengthdir_x(30,image_angle);
var offsety = lengthdir_y(30,image_angle);

firingdelay = firingdelay - 1;

if (mouse_check_button(mb_left)) and (firingdelay < 5)
{
	firingdelay = 10;
	
	with (instance_create_layer(x + offsetx, y + offsety, "Bullets", oBullet))
	{
		speed = 20;
		direction = other.image_angle;
		image_angle = direction;
	}
}

// makes gun point correct way

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

if(mouse_check_button(mb_left)){
	image_index = sGunFiring;
}
else{
	image_index = sGun;
}