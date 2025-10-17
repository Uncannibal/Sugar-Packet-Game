var all_rows = [];

if (is_grid_full == false){
	set_rows();
	
	all_rows = array_concat(row_1, row_2, row_3, row_4);
	var null_exists = array_contains(all_rows, "null");
	
	if (null_exists == false){
		is_grid_full = true;
		played = true;
	}	
}

if (is_started == true){
	set_rows()
	
	all_rows = array_concat(row_1, row_2, row_3, row_4);
	if (!array_equals(old_row_1, row_1)) {
		row_playable = 1;
	} else if (!array_equals(old_row_2, row_2)){
		row_playable = 2;
	} else if (!array_equals(old_row_3, row_3)){
		row_playable = 3;
	} else if (!array_equals(old_row_4, row_4)){
		row_playable = 4;
	}

	sugar_count = 0;

	for (var i = 0; i < array_length(all_rows); i++) {
		if (all_rows[i] != "null") {
			sugar_count++;
		}
	}
	
	if (sugar_count == 1) {
		is_won = true;
		winner = player;
		instance_deactivate_object(obj_menu);
		instance_deactivate_object(obj_play);
		time_source_start(game_end_timer);
	}
}

old_row_1 = row_1;
old_row_2 = row_2;
old_row_3 = row_3;
old_row_4 = row_4;