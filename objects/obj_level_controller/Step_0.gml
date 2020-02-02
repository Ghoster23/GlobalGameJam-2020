switch(state) {
	case 0: // Inactive
		
		obj_selector.enabled = true;
		
		var cursor_x = obj_phy_cursor.x;
		var cursor_y = obj_phy_cursor.y;
		
		var cell_x = cursor_x div global.cell_size;
		var cell_y = cursor_y div global.cell_size;
		
		if(cell_x >= global.level_columns or cell_x < 0){
			break;
		}
		
		if(cell_y >= global.level_rows or cell_y < 0){
			break;
		}
		
		var content = global.level_grid[# cell_x, cell_y];
		if(is_undefined(content)){
			break;
		} 
		var piece   = content[0];
		var tile    = content[1];
		
		if(device_mouse_check_button_released(0, mb_left)){
			
			scr_console_debug_message(string(piece) + " " + string(tile));
			
			scr_place_or_remove_thing(cell_x, cell_y, piece, tile);
		}
		
	
	break;
	
	case 1: // Playing
	
		obj_selector.enabled = false;
	
		var _step_complete = true;
	
		// For each GamePiece
		var i = 0;
		
		while(not is_undefined(global.gamepiece_list[| i])) {
			var _piece = global.gamepiece_list[| i];
			
			// If GamePiece has not completed its step
			if(_piece.time_step != global.time_step) {
				_step_complete = false;
				break;
			}
			
			i += 1;
		}
		
		if(_step_complete) global.time_step += 1;
	break;
	
	case 2: // Paused
	break;
}