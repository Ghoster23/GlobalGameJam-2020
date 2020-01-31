/// @description Animate
var _current_action = -1;

if(time_step < ds_list_size(actions)) {
	_current_action = actions[| time_step];
	
	if(_current_action[? "State"] < 2) {
		act_execute(_current_action, self.id);
	}
}

// If there is no action or if it has finished
if(_current_action == -1 || _current_action[? "State"] == 2) {
	// Idle Animation
}
else {
	// Action Animation
}