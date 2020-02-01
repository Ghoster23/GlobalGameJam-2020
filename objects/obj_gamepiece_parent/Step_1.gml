/// @description Decide actions
if(global.time_step != time_step) {
	time_step = global.time_step;
	
	if(current_action < ds_list_size(actions) - 1) {
		current_action += 1;
	}
}