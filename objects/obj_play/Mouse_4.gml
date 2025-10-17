if (obj_game.is_sugar_spawned == false and obj_game.is_grid_full == true and obj_game.player == 0){
	sprite_index = sprite_click;
	time_source_start(sprite_timer);
	obj_game.played = false;
	obj_game.is_started = true;
	obj_game.player = 1;
	instance_activate_object(obj_player_UI);
	if (not global.grid){
		instance_deactivate_object(obj_grid);
	}
	
} else if (obj_game.player == 1 and obj_game.played == true){
	sprite_index = sprite_click;
	time_source_start(sprite_timer);
	obj_game.player = 2;
	obj_game.played = false;
	obj_game.reset_rows();
	obj_player_UI.sprite_index = spr_player2;
 }else if (obj_game.player == 2 and obj_game.played == true){
	sprite_index = sprite_click;
	time_source_start(sprite_timer);
	obj_game.player = 1;
	obj_game.played = false;
	obj_player_UI.sprite_index = spr_player1;
	obj_game.reset_rows();
}