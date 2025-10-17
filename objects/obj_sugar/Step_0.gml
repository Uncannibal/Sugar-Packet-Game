// Inherit the parent event
event_inherited();

if (is_placed == false){
	x = mouse_x;
	y = mouse_y;
}

if place_meeting(x, y, obj_coffee_hitbox){
	image_alpha = 0.25;
} else {
	image_alpha = 1;
}