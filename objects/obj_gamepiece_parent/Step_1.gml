/// @description Decide actions
if(global.time_step != time_step) {
	time_step = global.time_step;
	
	// Advance to the next action
	if(current_action < ds_list_size(actions) - 1) {
		current_action += 1;
	}
	// Determine next action(s)
	else {
		event_user(0);
	}
}