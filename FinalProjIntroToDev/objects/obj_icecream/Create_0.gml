hspeed = -3;
vspeed = 0;

obj_icecream.depth = 3;

global.max_icecream = 5;
global.min_icecream = 2;
global.current_no_of_icecream = instance_number(obj_icecream);

time_since_last_icecream = 0; //timer for when we last spawned a cloud
time_between_icecream = 25;

//ySpawns = [340, 520, 540]
spawnX = room_width;
spawnY = irandom_range(330,550);