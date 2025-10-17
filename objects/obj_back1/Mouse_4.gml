// Inherit the parent event
event_inherited();

instance_activate_object(obj_tray_aspartame);
instance_activate_object(obj_tray_stevia);
instance_activate_object(obj_tray_sucralose);
instance_activate_object(obj_tray_sugar);

instance_activate_object(obj_s_aspartame);
instance_activate_object(obj_s_stevia);
instance_activate_object(obj_s_sucralose);
instance_activate_object(obj_s_sugar);

instance_activate_object(obj_play);
instance_activate_object(obj_coffee_hitbox);
instance_activate_object(obj_grid_part);
instance_activate_object(obj_menu);

obj_menu_screen.image_alpha = 0;
instance_deactivate_object(obj_toggle);
instance_deactivate_object(obj_credits);
instance_deactivate_object(obj_back1);

instance_deactivate_object(obj_quit);




