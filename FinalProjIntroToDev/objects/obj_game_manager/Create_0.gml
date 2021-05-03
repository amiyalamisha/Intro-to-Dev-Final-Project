/// @description Insert description here
// You can write your code in this editor

global.max_platforms = 7;
global.min_platforms = 4;
global.current_no_of_platforms = instance_number(obj_cloud);

time_since_last_platform = 0; //timer for when we last spawned a cloud
time_between_platforms = 30;

platform_spawn_x = room_width;
platform_spawn_y = 200;

speed_min = -3;
speed_max = -5;
