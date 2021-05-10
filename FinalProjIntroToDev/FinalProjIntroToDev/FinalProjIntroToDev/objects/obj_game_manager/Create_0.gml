global.max_platforms = 7;
global.min_platforms = 4;
global.current_no_of_platforms = instance_number(obj_cloud);

time_since_last_platform = 0; //timer for when we last spawned a cloud
// changed from 30 to 25
time_between_platforms = 25;

platform_spawn_x = room_width;
// changed y from 100 to 280
platform_spawn_y = 280;

speed_min = -3;
speed_max = -5;
