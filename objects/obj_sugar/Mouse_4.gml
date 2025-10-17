// Inherit the parent event
event_inherited();

if (is_placed == false and global.autosetup = false){
	if place_meeting(x, y, obj_coffee_hitbox){
		obj_game.is_sugar_spawned = false;
		var index = irandom(1);
		if (audio_group_is_loaded(ag_sfx)){
			audio_play_sound(sfx_sugar, 0, false, 1, 0, random_range(0.8, 1.2));
		}
		instance_destroy();
	} else {
		var  cur_grid = instance_nearest(x, y,obj_grid_part);
		if (place_meeting(x, y, cur_grid)){
			if (cur_grid.is_full == false){
				is_placed = true;
				layer = layer_get_id("lay_sugar");
				x = cur_grid.x;
				y = cur_grid.y;
				cur_grid.is_full = true;
				cur_grid.sugar_instance = id;
				grid = cur_grid;
				row = cur_grid.row;
				obj_game.is_sugar_spawned = false;
			}
		}
	}
}

if(obj_game.is_started and (obj_game.row_playable == 0 or obj_game.row_playable == row) and obj_game.is_won == false){
	grid.sugar_instance = "null"
	obj_game.played = true;
	obj_game.row_playable = row;
	instance_destroy();
	
}