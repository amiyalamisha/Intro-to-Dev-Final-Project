time_since_last_icecream++; //increase the timer since we last spawned a cloud
time_between_icecream = random_range(20, 30);

//icecream_index = irandom_range(0, 2);
//obj_icecream.image_index = 1;

amount_of_food = irandom_range(0, 4);

if(time_since_last_icecream > time_between_icecream || global.current_no_of_icecream < global.min_icecream){
	if(global.current_no_of_icecream < global.max_icecream){
		//var food_platform = instance_id[irandom_range(0, instance_number(obj_candycane))];
		//spawnY = ySpawns[irandom_range(0,2)];
	
		//instance_create_depth(spawnX, spawnY, 3, obj_icecream);
		
		var possible_new_cloud = instance_create_depth(spawnX, spawnY, 3, obj_icecream);
		
		with(possible_new_cloud){
			var tries = 0;
			// tring new placements of clouds
			while(place_meeting(x, y, obj_cloud) && place_meeting(x, y, obj_candycane) && tries < 100){
				x = spawnX;
				y = random_range(spawnY, room_height);
				hspeed = irandom_range(speed_min, speed_max);
				tries++;
			}
		}
	
		//instance_create_depth(room_width/2, room_height/2, 3, obj_icecream);
		global.current_no_of_icecream++;
		
		time_since_last_icecream = 0;
	}
}

x += hspeed;

if(x < -10){
	instance_destroy();
	global.current_no_of_icecream -- ;
}
