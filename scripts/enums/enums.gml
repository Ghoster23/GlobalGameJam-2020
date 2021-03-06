enum gamepiece_class {
	none,
	tile,
	component,
	slime,
	food,
	count
}

enum action_types {
	none,
	move,
	eat,
	spawn,
	charge,
	solder,
	die,
	blast,
	count
}

enum move_horizontal {
	none  =  0,
	right =  1,
	left  = -1,
	count =  3
}

enum move_vertical {
	none  =  0,
	up    = -1,
	down  =  1,
	count =  3
}

enum directions {
	none,
	up,
	right,
	down,
	left,
	up_right,
	down_right,
	up_left,
	down_left,
	count
}

enum cell_reservation {
	none = noone,
	solder = 400,
	energy = 401,
	blast  = 402,
	count
}