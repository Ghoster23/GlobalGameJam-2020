switch(state) {
	case 0: // Inactive
	break;
	
	case 1: // Playing
		#region Time Step
		var _gamepiece_count = ds_list_size(global.gamepiece_list);

		var _timestep_done = true;
		
		var _finished_count = 0;

		// For each GamePiece
		for(var i = 0; i < _gamepiece_count; i++) {
			var _gamepiece = global.gamepiece_list[| i];
			var _act_state = _gamepiece.action_state;
	
			// GamePiece has not concluded its current action
			if(_act_state < 2) {
				_timestep_done = false;
				break;
			}
			
			// GamePiece has done all its actions
			if(_act_state == 3) {
				_finished_count += 1;
			}
		}

		// If all GamePieces have concluded their current action
		if(_timestep_done) {
			global.time_step += 1;
		}
		
		// If all GamePieces have concluded all their action
		if(_finished_count == _gamepiece_count) {
			state = 3;
		}
		#endregion
	break;
	
	case 2: // Paused
	break;
	
	case 3: // Finished
	break;
}