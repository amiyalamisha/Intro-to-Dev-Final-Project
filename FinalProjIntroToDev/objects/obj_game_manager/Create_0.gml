score = 0;

global.max_clouds = 7;
global.min_clouds = 4;
global.current_no_of_clouds = instance_number(obj_cloud);

time_since_last_clouds = 0; //timer for when we last spawned a cloud
// changed from 30 to 25
time_between_clouds = 25;

global.max_candy = 3;
global.min_candy = 1;
global.current_no_of_candy = instance_number(obj_candycane);

time_since_last_candy = 0; 
time_between_candy = 25;

global.max_cookie = 3;
global.min_cookie = 1;
global.current_no_of_cookies = instance_number(obj_smores);

time_since_last_cookie = 0; 
time_between_cookie = 25;

platform_spawn_x = room_width + 100;
// changed y from 100 to 280
platform_spawn_y = 280;

speed_min = -3;
speed_max = -5;

cat_timer = 6;
icecream_timer = 1;

global.current_no_of_icecream = instance_number(obj_icecream);
global.energy_points = 0;

