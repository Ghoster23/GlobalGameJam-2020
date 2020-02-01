///@description Resets a GamePiece to its initial state
///@param gamepiece
{
var _piece = argument0;

with(_piece) {
	state = 0;
					
	ds_list_clear(actions);
	action_index = 0;
	action_count = 0;
					
	current_action = -1;
					
	time_step = -1;
	
	grid_x = ini_grid_x;
	grid_y = ini_grid_y;
	
	x = (grid_x + 0.5) * global.cell_size;
	y = (grid_y + 0.5) * global.cell_size;

	switch(class) {
		case gamepiece_class.slime:
			food = 0;
		break;
	
		case gamepiece_class.component:
			
		break;
	}
}
}