/// @description Execute action
switch(state) {
	case 0: // Waiting
	break;
	
	case 1: // Executing Action
		act_execute(current_action, self.id);
		
		gp_position_update(self.id);
	break;
}