if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case Rm_start:
			room_goto(Rm_game);
			break;
			
		case Rm_win:
		case Rm_gameover:
			game_restart();
			break;
	}
}

if(room == Rm_game){
	if(score >= 1000){
		room_goto(Rm_win);
	}

	if(lives <= 0){
		room_goto(Rm_gameover);
	}
}