draw_set_font(fnt_title);		// calling your new font
draw_set_color(c_white);

draw_set_halign(fa_center);		// centering text

draw_text(room_width/2, 100, "Game Over");
draw_text(room_width/2, room_height-100, "Press SPACE to play again");

draw_set_font(fnt_highscore);
draw_set_halign(fa_left);

if(score > global.highscore1){
	draw_text(50, room_height/2, "NEW HIGH SCORE!\nYour Score:\n" + string(score));
}
else{
	draw_text(50, room_height/2, "Your Score:\n" + string(score));
}

draw_text(room_width/2 + 10, 370,"High Scores:\n" + string(global.highscore1) + "\n" + string(global.highscore2) + "\n" + string(global.highscore2));

