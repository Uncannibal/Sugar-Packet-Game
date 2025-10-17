// Inherit the parent event
event_inherited();

if (obj_game.is_sugar_spawned == false){
	instance_deactivate_object(obj_tray_aspartame);
	instance_deactivate_object(obj_tray_stevia);
	instance_deactivate_object(obj_tray_sucralose);
	instance_deactivate_object(obj_tray_sugar);
	if instance_exists(obj_s_aspartame){
		instance_deactivate_object(obj_s_aspartame);
	}
	if instance_exists(obj_s_stevia){
		instance_deactivate_object(obj_s_stevia);
	}
	if instance_exists(obj_s_sucralose){
		instance_deactivate_object(obj_s_sucralose);
	}
	if instance_exists(obj_s_sugar){
		instance_deactivate_object(obj_s_sugar);
	}
	instance_deactivate_object(obj_play);
	instance_deactivate_object(obj_coffee_hitbox);
	instance_deactivate_object(obj_grid_part);

	obj_menu_screen.image_alpha = 1;
	instance_activate_object(obj_toggle);
	instance_activate_object(obj_credits);
	instance_activate_object(obj_back1);
	instance_activate_object(obj_quit);

	instance_deactivate_object(obj_menu);
}

