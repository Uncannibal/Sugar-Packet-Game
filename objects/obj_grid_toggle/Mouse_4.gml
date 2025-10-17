// Inherit the parent event
event_inherited();

global.grid = not global.grid;

if (global.grid == false){
	if (instance_exists(obj_grid)){
		instance_deactivate_object(obj_grid);
	}
} else{
	if (not instance_exists(obj_grid)){
		instance_activate_object(obj_grid);
	}
}
		

