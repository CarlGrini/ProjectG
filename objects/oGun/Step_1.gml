x = oPlayer.x;
y = oPlayer.y;

// points gun to where mouse is
image_angle = point_direction(x, y, mouse_x, mouse_y);


firingdelay = firingdelay - 1;

if (mouse_check_button(mb_left)) and (firingdelay < 5)
{
	firingdelay = 10;
	
	with (instance_create_layer(x, y, "Bullets", oBullet))
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