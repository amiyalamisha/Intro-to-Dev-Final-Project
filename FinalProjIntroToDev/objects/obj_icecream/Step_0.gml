x += hspeed;

if(x < -10){
	instance_destroy();
	global.current_no_of_icecream -- ;
}