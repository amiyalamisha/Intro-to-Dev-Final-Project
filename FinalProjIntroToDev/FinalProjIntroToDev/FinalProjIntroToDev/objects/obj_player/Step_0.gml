yspeed += grav; //gravity accelerates the player down.
xspeed *= x_speed_slowdown; //slow the player down a little every frame (helps to make it easier to control)

// this is only temporary boundaries for testing purposes
if(y > room_height){
	//var cloud = instance_place(x, y, obj_cloud);
	
	grav = 0;
	yspeed = 0;
	//xspeed = hspeed.obj
}
else{
	grav = 0.5;
}

show_debug_message(yspeed);
if(place_meeting(x, y, obj_cloud) && yspeed > 0){
	yspeed *= -1;
	obj_cloud.pop = true;
}
else if(place_meeting(x, y, obj_candycane) && yspeed > 0){
	grav = 0;
	yspeed = 0;
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
	image_xscale = +1;
}

// see below
//if(keyboard_check_pressed(vk_space)){
//	yspeed = -15;
//}

x += xspeed;
y += yspeed;

// kitty: 
// checking if the player should be allowed to jump
// allow/do not allow player to jump by pressing space
//onGround = instance_place(x, y, obj_cloud);

if(instance_place(x, y, obj_cloud) || instance_place(x, y, obj_candycane)){
	if(keyboard_check(vk_space)){
		yspeed = -15;
		sprite_index = spr_player_jumping;
	}
	else{
		sprite_index = spr_player_running;
	}
}


if(knocked_out){

	if(life_timer > 0){
		life_timer--;
	}
	if(check = true && life_timer = 0){
		global.player_lives--;
	}

	//timer
	if(respawn_timer > 0){
		respawn_timer--;
	}
	//count_down ended
	if(respawn_timer == 0){
		sprite_index = spr_player_running;
		knocked_out = false;
		check = false;
		y = 0;
		x = 125;
		respawn_timer = time_to_respawn;
		life_timer = respawn_timer;
		yspeed = 0;
	}
}

//knocked_out condition for both players
if(y > room_height - 70){
	knocked_out = true;
	check = true;
	sprite_index = spr_player_die;
}