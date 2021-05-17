randomize();

/////////////////////////////////// TIMERS /////////////////////////////////////////
time_since_last_clouds++; //increase the timer since we last spawned a cloud
time_between_clouds = random_range(20, 50);		// random generation time

time_since_last_candy++; //increase the timer since we last spawned a cloud
time_between_candy = random_range(20, 50);		// random generation time

time_since_last_cookie++; //increase the timer since we last spawned a cloud
time_between_cookie = random_range(30, 50);		// random generation time

/////////////////////////////////// CLOUD SPAWN /////////////////////////////////////////

if(time_since_last_clouds > time_between_clouds || global.current_no_of_clouds < global.min_clouds){
	if(global.current_no_of_clouds < global.max_clouds){	// comparing to max amount of clouds
		//add logic to spawn new clouds
		var possible_new_cloud = instance_create_depth(platform_spawn_x, random_range(platform_spawn_y, room_height - 330), 1, obj_cloud);
		
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
		
		if(cat_timer != 0){
			cat_timer--;
		}
		else{
			instance_create_depth(possible_new_cloud.x, possible_new_cloud.y - 20, 0, obj_cat);
			cat_timer = 6;
		}
		
		global.current_no_of_clouds++;
		
		time_since_last_clouds = 0;	// timer
	}
}

/////////////////////////////////// CANDYCANE SPAWN /////////////////////////////////////////

if(time_since_last_candy > time_between_candy || global.current_no_of_candy < global.min_candy){
	if(global.current_no_of_candy < global.max_candy){	// comparing to max amount of clouds
		//add logic to spawn new clouds
		var possible_new_cloud = instance_create_depth(platform_spawn_x, random_range(platform_spawn_y, room_height - 130), 2, obj_candycane);
		
		with(possible_new_cloud){
			var tries = 0;
			// tring new placements of clouds
			while(place_meeting(x, y, obj_candycane) && place_meeting(x - 300, y, obj_candycane) && place_meeting(x, y + 100, obj_candycane) && place_meeting(x, y - 100, obj_candycane) && tries < 100){
				x = platform_spawn_x;
				y = random_range(platform_spawn_y, room_height);
				hspeed = irandom_range(speed_min, speed_max);
				tries++;
			}
		}
		global.current_no_of_candy++;
		
		time_since_last_candy = 0;	// timer
	}
}

/////////////////////////////////// SMORES SPAWN /////////////////////////////////////////

if(time_since_last_cookie > time_between_cookie || global.current_no_of_cookies < global.min_cookie){
	if(global.current_no_of_cookies < global.max_cookie){	// comparing to max amount of clouds
		//add logic to spawn new clouds
		var possible_new_cloud = instance_create_depth(platform_spawn_x, random_range(platform_spawn_y, room_height - 130), 2, obj_smores);
		
		with(possible_new_cloud){
			var tries = 0;
			// tring new placements of clouds
			while((place_meeting(x, y, obj_smores) && place_meeting(x - 200, y, obj_smores) && place_meeting(x, y + 100, obj_smores) && place_meeting(x, y - 100, obj_smores)) && (place_meeting(x, y, obj_candycane) && place_meeting(x - 300, y, obj_candycane) && place_meeting(x, y + 100, obj_candycane) && place_meeting(x, y - 100, obj_candycane)) && tries < 100){
				x = platform_spawn_x;
				y = random_range(platform_spawn_y, room_height);
				hspeed = irandom_range(speed_min, speed_max);
				tries++;
			}
		}
		global.current_no_of_cookies++;
		
		time_since_last_cookie = 0;	// timer
	}
}

//icecream_index = irandom_range(0, 2);
//obj_icecream.image_index = icecream_index;

//amount_of_food = irandom_range(0, 4);

//if(global.current_no_of_icecream < global.min_icecream || global.current_no_of_icecream < global.max_icecream){
//	//var food_platform = instance_id[irandom_range(0, instance_number(obj_candycane))];
	
//	//instance_create_depth(food_platform.x, food_platform.y + 10, 3, obj_icecream);
	
//	//instance_create_depth(room_width/2, room_height/2, 3, obj_icecream);
//}

//show_debug_message(score);