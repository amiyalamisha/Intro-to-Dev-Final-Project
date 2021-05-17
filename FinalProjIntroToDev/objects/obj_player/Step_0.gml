btn_held = keyboard_check(vk_space);
btn_justpressed = keyboard_check_pressed(vk_space);


if (btn_justpressed) btn_frames_since = 0;
else if (btn_held) btn_frames_since += 1;
else btn_frames_since = 11;

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

if(place_meeting(x, y, obj_cloud) || place_meeting(x, y, obj_candycane) || place_meeting(x, y, obj_smores)){
	onGround = true;
}
else{
	onGround = false;
}

if(place_meeting(x, y, obj_cloud) && yspeed > 0){
	yspeed *= -1;
	global.pop = true;
	sprite_index = spr_player_jumping;
}


if(global.pop){
	inst = instance_nearest(x, y, obj_cloud);
	instance_destroy(inst);
	global.current_no_of_clouds--;
	global.collisionx_cloud = x - 10;
	global.collisiony_cloud = y + 5;
	global.animation_cloud = true;
	
	global.pop = false;
}

else if((place_meeting(x, y, obj_candycane) || place_meeting(x, y, obj_smores))&& yspeed > 0){
	grav = 0;
	yspeed = 0;
}
else{
	grav = 0.5;
}

if(x < 0 || x > room_width){
	xspeed = 0;
}

//if(keyboard_check(ord("D"))){
//	xspeed += acceleration; 
//	image_xscale = +1;
//}


x += xspeed;
y += yspeed;


if (btn_justpressed){
	onGround = false;
    time_in_air = 0;
    sprite_index = spr_player_jumping;
}
if ((btn_held)&&(time_in_air<10)){
    yspeed = -7;
} 

if(instance_place(x, y, obj_cat)){
	knocked_out = true;
	sprite_index = spr_player_die;
	show_debug_message("die");
}


if(knocked_out){
	if(life_timer > 0){
		life_timer--;
	}
	if(life_timer = 0){
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
		respawn_timer = time_to_respawn;
		life_timer = respawn_timer;
	}
}
