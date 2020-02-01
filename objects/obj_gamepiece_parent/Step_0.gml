/// @description Execute action
if(current_action < ds_list_size(actions)) {
	var _act = actions[| current_action];
	
	current_state = _act[? "State"];
	
	if(current_state < 2) {
		act_execute(_act, self.id);
		
		#region Position Update
		var _g_nx = x div global.cell_size;
		var _g_ny = y div global.cell_size;
		
		if(_g_nx != grid_x || _g_ny != grid_y) {
			// Update Level Grid's Position at which this was
			var _present = global.level_grid[# grid_x, grid_y] ;
			_present[0] = noone;
			global.level_grid[# grid_x, grid_y] = _present;
			
			// Update Level Grid's Position at which this now is
			_present = global.level_grid[# _g_nx, _g_ny];
			_present[0] = self.id;
			global.level_grid[# _g_nx, _g_ny] = _present;
			
			grid_x = _g_nx;
			grid_y = _g_ny;
		}
		#endregion
	}
}