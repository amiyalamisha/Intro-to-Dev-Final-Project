xspeed = 0;
yspeed = 0;
grav = 0.5;

x_speed_slowdown = 0.87; //this should be a value less than 1.
acceleration = 0.5;

obj_player.depth = 5;

onGround = false;

falling = false;

knocked_out = false;
time_to_respawn = 50;
respawn_timer = time_to_respawn;

global.player_lives = 3;
check = false;
life_timer = respawn_timer;