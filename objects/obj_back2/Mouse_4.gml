// Inherit the parent event
event_inherited();

obj_credit_screen.image_alpha = 0;
instance_activate_object(obj_toggle);
instance_activate_object(obj_credits);
instance_activate_object(obj_back1);
instance_activate_object(obj_quit);
instance_activate_object(obj_credits);
instance_deactivate_object(obj_back2);