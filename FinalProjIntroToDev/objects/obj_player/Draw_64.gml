draw_set_font(fnt_score);
draw_set_color(c_maroon);

// drawing text to display player 2 score
draw_text(30, 20, string(score));

/////////////////////////////////// LIVES ////////////////////////////////////////////

if(global.player_lives == 3){
	draw_sprite_ext(spr_life_3, -1, 1030, 30, 3, 3, 0, c_white, 1);
}

if(global.player_lives == 2){
	draw_sprite_ext(spr_life_2, -1, 1030, 30, 3, 3, 0, c_white, 1);
}

if(global.player_lives == 1){
	draw_sprite_ext(spr_life_1, -1, 1030, 30, 3, 3, 0, c_white, 1);
}

/////////////////////////////////// ENERGY POINTS ////////////////////////////////////////////

if(global.energy_points == 5){
	draw_sprite_ext(spr_energy5, -1, 30, 75, 1, 1, 0, c_white, 1);
}

if(global.energy_points == 4){
	draw_sprite_ext(spr_energy4, -1, 30, 75, 1, 1, 0, c_white, 1);
}

if(global.energy_points == 3){
	draw_sprite_ext(spr_energy3, -1, 30, 75, 1, 1, 0, c_white, 1);
}

if(global.energy_points == 2){
	draw_sprite_ext(spr_energy2, -1, 30, 75, 1, 1, 0, c_white, 1);
}

if(global.energy_points == 1){
	draw_sprite_ext(spr_energy1, -1, 30, 75, 1, 1, 0, c_white, 1);
}