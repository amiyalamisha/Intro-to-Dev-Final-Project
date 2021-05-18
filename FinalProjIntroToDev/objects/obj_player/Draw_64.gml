///////////////////////////////// SCORES ///////////////////////////////

draw_set_font(fnt_score);
draw_set_color(c_blue);

// drawing text to display player score
draw_set_color(c_dkgray);
draw_set_font(fnt_score);
draw_text(70, 35, string(score));

/////////////////////////////////// HIGH SCORES ////////////////////////////////////////////

draw_text(room_width - 320, 100,"High Scores:\n" + string(global.highscore1) + "\n" + string(global.highscore2) + "\n" + string(global.highscore2));



/////////////////////////////////// ENERGY POINTS ////////////////////////////////////////////
if(global.animation_energy == true){
	if(global.animation_energy_timer > 17){
		draw_sprite_ext(spr_energyani_1, -1, 30, 30, 1.5, 1.5, 0, c_white, 1);
		global.animation_energy_timer--;
	}
	else if(global.animation_energy_timer > 14){
		draw_sprite_ext(spr_energyani_2, -1, 30, 30, 1.5, 1.5, 0, c_white, 1);
		global.animation_energy_timer--;
	}
	else if(global.animation_energy_timer > 6){
		draw_sprite_ext(spr_energyani_3, -1, 30, 30, 1.5, 1.5, 0, c_white, 1);
		global.animation_energy_timer--;
	}
	else if(global.animation_energy_timer > 3){
		draw_sprite_ext(spr_energyani_2, -1, 30, 30, 1.5, 1.5, 0, c_white, 1);
		global.animation_energy_timer--;
	}
	else if(global.animation_energy_timer > 0){
		draw_sprite_ext(spr_energyani_1, -1, 30, 30, 1.5, 1.5, 0, c_white, 1);
		global.animation_energy_timer--;
	}
	else if(global.animation_energy_timer == 0){
		global.animation_energy = false;
		global.animation_energy_timer = 20;
	}
}