switch(state) {
	case 0: // Inactive
	break;
	
	case 1: // Playing
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