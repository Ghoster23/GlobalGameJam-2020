/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _cell = global.level_grid[# grid_x, grid_y];

var _piece = _cell[0];

switch(_piece) {
	case cell_reservation.blast:
		image_blend = c_blue;
	break;
	
	case cell_reservation.energy:
		image_blend = c_yellow;
	break;
	
	case cell_reservation.solder:
		image_blend = c_black;
	break;
	
	default:
		image_blend = c_white;
	break;
}