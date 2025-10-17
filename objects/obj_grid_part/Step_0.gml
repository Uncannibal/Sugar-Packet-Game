if (is_full == false and global.autosetup == true){
	var cur_sugar = "null";
	var sugar_num = irandom_range(1, 4);
	if (sugar_num == 1){
		cur_sugar = instance_create_layer(x, y, "lay_sugar", obj_s_aspartame);
	} else if (sugar_num == 2){
		cur_sugar = instance_create_layer(x, y, "lay_sugar", obj_s_stevia);
	} else if (sugar_num == 3){
		cur_sugar = instance_create_layer(x, y, "lay_sugar", obj_s_sucralose);
	} else {
		cur_sugar = instance_create_layer(x, y, "lay_sugar", obj_s_sugar);
	}
	sugar_instance = cur_sugar.id;
	is_full = true;
	cur_sugar.is_placed = true;
	cur_sugar.row = row;
	cur_sugar.grid = self
	obj_game.is_sugar_spawned = false;
}