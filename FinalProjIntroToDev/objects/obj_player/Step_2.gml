// boundaries
if(x >= 1130){
	x = 1130;
}
if(x <= 70){
	x = 70;
}
if(y >= 1150){
	audio_play_sound(snd_gameover,1,0);
	room_goto(rm_end);		// gameover
}
if(y <= 50){
	y = 50;
}