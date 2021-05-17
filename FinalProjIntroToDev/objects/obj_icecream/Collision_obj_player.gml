

audio_play_sound(snd_icecream,1,0);
global.energy_points++;

score++;
//global.current_no_of_icecream--;


with(obj_player){
	inst = instance_nearest(x, y, obj_icecream);
	instance_destroy(inst);
	global.animation_energy = true;
}