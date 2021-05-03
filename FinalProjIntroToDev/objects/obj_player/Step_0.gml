yspeed += grav; //gravity accelerates the player down.
xspeed *= x_speed_slowdown; //slow the player down a little every frame (helps to make it easier to control)

// this is only temporary boundaries for testing purposes
if(y > room_height || (place_meeting(x, y, obj_cloud) && yspeed > 0)){
	//var cloud = instance_place(x, y, obj_cloud);
	
	grav = 0;
	yspeed = 0;
	//xspeed = hspeed.obj
}

else{
	grav = 0.5;
}

if(x < 0 || x > room_width){
	xspeed = 0;
}

if(keyboard_check(ord("A"))){
	xspeed -= acceleration; 
	image_xscale = -1;
} 

if(keyboard_check(ord("D"))){
	xspeed += acceleration; 
	image_xscale = 1;
}
if(keyboard_check_pressed(vk_space)){
	yspeed = -15;
}


x += xspeed;
y += yspeed;
