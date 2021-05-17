xspeed = 0;
yspeed = 0;
grav = 0.4;

x_speed_slowdown = 0.87; //this should be a value less than 1.

obj_player.depth = 5;

onGround = true;

knocked_out = false;
time_to_respawn = 50;
respawn_timer = time_to_respawn;

global.player_lives = 3;
life_timer = respawn_timer;


time_in_air = 0;
btn_frames_since = 0;

global.collisionx_cloud = 0;
global.collisiony_cloud = 0;

global.animation_energy = false;
global.animation_energy_timer = 20;