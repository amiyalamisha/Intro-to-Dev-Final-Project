/// @description Insert description here
// You can write your code in this editor
if(global.player_lives == 3){
	draw_sprite_ext(spr_life_3, -1, 1030, 30, 3, 3, 0, c_white, 1);
}
if(global.player_lives == 2){
	draw_sprite_ext(spr_life_2, -1, 1030, 30, 3, 3, 0, c_white, 1);
}
if(global.player_lives == 1){
	draw_sprite_ext(spr_life_1, -1, 1030, 30, 3, 3, 0, c_white, 1);
}