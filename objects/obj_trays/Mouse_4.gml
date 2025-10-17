// Inherit the parent event
event_inherited();

if (obj_game.is_grid_full == false and obj_game.is_sugar_spawned == false and global.autosetup == false){
	instance_create_layer(x, y, "lay_movement", sugar_type);
	obj_game.is_sugar_spawned = true;
	sprite_index = sprite_default;
}