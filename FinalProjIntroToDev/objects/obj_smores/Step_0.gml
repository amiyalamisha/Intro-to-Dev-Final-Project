
x += hspeed;

if(x < -100){
	instance_destroy();
	global.current_no_of_cookies--;
}