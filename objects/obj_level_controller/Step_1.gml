/// @description State Machine
switch(state) {
	case 0: // Inactive
		if(pressed_play) {
			state = 1;
		}
	break;
	
	case 1: // Playing
		if(pressed_pause) {
			state = 2;
		}
		
		if(pressed_reset) {
			var i = 0;

			while(not is_undefined(global.gamepiece_list[| i])) {
				var _piece = global.gamepiece_list[| i];
	
				gp_reset(_piece);
			}
			state = 0;
		}
	break;
	
	case 2: // Paused
		if(pressed_play) {
			state = 1;
		}
	
		if(pressed_reset) {
			var i = 0;

			while(not is_undefined(global.gamepiece_list[| i])) {
				var _piece = global.gamepiece_list[| i];
	
				gp_reset(_piece);
			}
			state = 0;
		}
		
	break;
	
	case 3: // Finished
		if(pressed_play) {
			pressed_reset = true;
		}
	
		if(pressed_reset) {
			var i = 0;

			while(not is_undefined(global.gamepiece_list[| i])) {
				var _piece = global.gamepiece_list[| i];
	
				gp_reset(_piece);
			}
			state = 0;
		}
		
		if(pressed_play) {
			state = 1;
		}
	break;
}

pressed_play  = false;
pressed_pause = false;
pressed_reset = false;