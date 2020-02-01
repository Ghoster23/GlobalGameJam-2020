/// @description State Machine
switch(state) {
	case 0: // Waiting
		// If simulation progressed
		if(time_step < global.time_step) {
			
			event_user(0); // Find Action
			
			// If Action was found
			if(action_index < action_count) {
				current_action = actions[| action_index];
			
				state = 1; //  Go to Executing Action
			}
			
			// If no Action was found
			else {
				time_step += 1; // Time Step Completed
			}
		}
	break;
	
	case 1: // Executing Action
		// If action done
		if(current_action[? "State"] == 2) {
			action_index += 1; // Progress to next action
			
			time_step += 1; // Time Step Completed
			
			state = 0; // Go to Waiting
		}
	break;
}