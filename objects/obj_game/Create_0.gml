is_grid_full = false;
is_sugar_spawned = false;
is_started = false;
player = 0;
played = false;
row_playable = 0;
is_won = false;
winner = 0;
sugar_count = 0;

instance_deactivate_object(obj_player_UI);

game_end_timer = time_source_create(time_source_game, 2, time_source_units_seconds, function(){
	obj_black_screen.image_alpha = 0.75;
	if winner == 2{
		obj_player_win.sprite_index = spr_player_2_wins;
	} else{
		obj_player_win.sprite_index = spr_player_1_wins;
	}
	obj_player_win.image_alpha = 1;
	instance_activate_object(obj_leave);
	instance_activate_object(obj_play_again);
});

function reset_rows(){
	obj_game.old_row_1 = obj_game.row_1;
	obj_game.old_row_2 = obj_game.row_2;
	obj_game.old_row_3 = obj_game.row_3;
	obj_game.old_row_4 = obj_game.row_4;
	obj_game.row_playable = 0;
}

function set_rows(){
	row_1 = [inst_5AA9C8B4.sugar_instance];
	row_2 = [inst_349D0A93.sugar_instance, inst_1F05330B.sugar_instance, inst_69D228C0.sugar_instance]
	row_3 = [inst_18D5FE21.sugar_instance, inst_79E4AEA3.sugar_instance, inst_2DE85461.sugar_instance, inst_7D0A2A.sugar_instance, inst_5A77C37D.sugar_instance];
	row_4 = [inst_248DC02D.sugar_instance, inst_752ECA2.sugar_instance, inst_54F99C68.sugar_instance, inst_727C01A7.sugar_instance, inst_54CBB2F8.sugar_instance, inst_32D7FC2C.sugar_instance, inst_6A80C040.sugar_instance];
}

old_row_1 = [];
old_row_2 = [];
old_row_3 = [];
old_row_4 = [];

set_rows();


function draw_debug() {
    var xx = 20; // left margin
    var yy = 20; // top margin
    var line_height = 20;

    draw_set_color(c_white);
    draw_set_font(-1); // default font

    // Row 1
    draw_text(xx, yy, "Row 1: " + string(row_1));
    yy += line_height;

    // Row 2
    draw_text(xx, yy, "Row 2: " + string(row_2));
    yy += line_height;

    // Row 3
    draw_text(xx, yy, "Row 3: " + string(row_3));
    yy += line_height;

    // Row 4
    draw_text(xx, yy, "Row 4: " + string(row_4));
    yy += line_height;
	
	draw_text(xx, yy, "Play Row: " + string(row_playable));
    yy += line_height;
	
	draw_text(xx, yy, "sugar: " + string(sugar_count));
    yy += line_height;
	
	draw_text(xx, yy, "played: " + string(played));
    yy += line_height;
}
