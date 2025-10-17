var scale_spd = 0.1;
var min_scale = 1;

if(obj_game.played == true){
	image_alpha = 1;
	var range = 12;
	var max_scale = 1.1;
	var mouse_hover = distance_to_point(mouse_x, mouse_y) <= range;
	var goal_scale = (min_scale * !mouse_hover) + (max_scale * mouse_hover);
	//animate button
	image_xscale = lerp(image_xscale, goal_scale, scale_spd);
	image_yscale = lerp(image_yscale, goal_scale, scale_spd);
} else {
	image_xscale = lerp(image_xscale, min_scale, scale_spd);
	image_yscale = lerp(image_yscale, min_scale, scale_spd);
	image_alpha = 0.25;
}
