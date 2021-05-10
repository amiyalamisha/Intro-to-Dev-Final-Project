randomize();

time_since_last_clouds++; //increase the timer since we last spawned a cloud
time_between_clouds = random_range(30, 50);		// random generation time

time_since_last_candy++; //increase the timer since we last spawned a cloud
time_between_candy = random_range(20, 50);		// random generation time

if(time_since_last_clouds > time_between_clouds || global.current_no_of_clouds < global.min_clouds){
	if(global.current_no_of_clouds < global.max_clouds){	// comparing to max amount of clouds
		//add logic to spawn new clouds
		// kitty: I've changed the random_range.y from -30 to -80
		var possible_new_cloud = instance_create_depth(platform_spawn_x, random_range(platform_spawn_y, room_height - 130), 1, obj_cloud);
		
		with(possible_new_cloud){
			var tries = 0;
			// tring new placements of clouds
			while(place_meeting(x, y, obj_cloud) && place_meeting(x, y + 100, obj_cloud) && place_meeting(x, y - 100, obj_cloud) && tries < 100){
				x = room_width;
				y = random_range(platform_spawn_y, room_height);
				hspeed = irandom_range(speed_min, speed_max);
				tries++;
			}
		}
		global.current_no_of_clouds++;
		
		time_since_last_clouds = 0;	// timer
	}
}


if(time_since_last_candy > time_between_candy || global.current_no_of_candy < global.min_candy){
	if(global.current_no_of_candy < global.max_candy){	// comparing to max amount of clouds
		//add logic to spawn new clouds
		var possible_new_cloud = instance_create_depth(platform_spawn_x, random_range(platform_spawn_y, room_height - 130), 1, obj_candycane);
		
		with(possible_new_cloud){
			var tries = 0;
			// tring new placements of clouds
			while(place_meeting(x, y, obj_candycane) && place_meeting(x, y + 300, obj_candycane) && place_meeting(x, y - 100, obj_candycane) && tries < 100){
				x = room_width;
				y = random_range(platform_spawn_y, room_height);
				hspeed = irandom_range(speed_min, speed_max);
				tries++;
			}
		}
		global.current_no_of_candy++;
		
		time_since_last_candy = 0;	// timer
	}
}