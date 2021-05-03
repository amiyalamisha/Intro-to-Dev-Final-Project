
//time_since_last_cloud++; //increase the timer since we last spawned a cloud
//time_between_clouds = random_range(30, 50);		// random generation time
randomize();

if(global.current_no_of_platforms < global.min_platforms){
	if(global.current_no_of_platforms < global.max_platforms){	// comparing to max amount of clouds
		//add logic to spawn new clouds
		var possible_new_cloud = instance_create_depth(platform_spawn_x, random_range(platform_spawn_y, room_height - 30), 1, obj_cloud);
		
		with(possible_new_cloud){
			var tries = 0;
			// tring new placements of clouds
			while(place_meeting(x, y, obj_cloud) && place_meeting(x, y + 100, obj_cloud) && place_meeting(x, y - 100, obj_cloud) && tries < 100){
				x = room_width;
				y = random_range(global.min_platforms, room_height);
				hspeed = irandom_range(speed_min, speed_max);
				tries++;
			}
		}
		global.current_no_of_platforms++;
		
		//time_since_last_cloud = 0;	// timer
	}
}