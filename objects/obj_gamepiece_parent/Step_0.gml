/// @description Execute action
if(time_step < ds_list_size(actions)) {
	var _current_action = actions[| time_step];
	
	if(_current_action[? "State"] < 2) {
		act_execute(_current_action, self.id);
		
		grid_x = x div global.cell_size;
		grid_y = y div global.cell_size;
	}
}