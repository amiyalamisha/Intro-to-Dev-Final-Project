
x += hspeed;

if(x < 0){
	instance_destroy();
	global.current_no_of_candy--;
}

//show_debug_message(y);