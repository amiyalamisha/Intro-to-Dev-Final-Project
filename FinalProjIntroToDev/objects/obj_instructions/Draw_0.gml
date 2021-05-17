draw_set_font(fnt_title);		// calling your new font
draw_set_color(c_dkgray);

draw_set_halign(fa_center);		// centering text

draw_text(room_width/2, 100, "Instructions");
draw_text(room_width/2, room_height-100, "Press SPACE to start");

draw_set_font(fnt_score);
draw_set_halign(fa_left);

draw_text(50, 370, "Jump on platforms to avoid hitting the ground\n\nUse SPACE to jump\n\nCollect food to gain points and energy\n\nHitting cats will make you lose points\n\nSome platforms interact with you differently");
