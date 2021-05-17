
x += hspeed;

if(x < -50){
	instance_destroy();
	global.current_no_of_cookies--;
}

if(crumble){
	break_timer++;
}

if(sound_play && break_timer == 5){
	audio_play_sound(snd_smore_crumble,1,0);
	sound_play = false;
}

if(break_timer > 10){
	//instance_destroy();
	sprite_index = spr_smore_crumble;
	crumb_timer++;
	
	if(crumb_timer > 10){
		//global.current_no_of_cookies--;
		crumble = false;
		break_timer = 0;
		crumb_timer = 0;
	}
}