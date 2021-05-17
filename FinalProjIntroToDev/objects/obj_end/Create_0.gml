if(score > global.highscore1){
	global.highscore3 = global.highscore2;
	global.highscore2 = global.highscore1;
	global.highscore1 = score;
}
else if(score > global.highscore2){
	global.highscore3 = global.highscore2;
	global.highscore2 = score;
}
else if(score > global.highscore3){
	global.highscore3 = score;
}