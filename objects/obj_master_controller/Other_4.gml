
//do stuff at the beggining of each room
switch(room){

	case rm_level:
	
		global.level_controller = instance_create_layer(x+500,y,layer,obj_level_controller);
		
		//camera
		global.camera.follow  = noone; 
		global.camera.x       = 640;
		global.camera.y       = 360;
		
		//add constraints to camera
		var space = -30;
		var info = global.level_info[|global.level_number];

		var w = info[0] * 32;
		var h = info[1] * 32;

		global.camera.boundaries	   = true;
		global.camera.left_boundary    =    -space;
		global.camera.right_boundary   =  w + space;
		global.camera.top_boundary     =    -space;
		global.camera.bottom_boundary  =  h + space;
	break;
	
	case rm_menu:
		
		//camera
		global.camera.follow  = "static"; 
		
		//constraints
		global.camera.boundaries = false;
		
		global.camera.x          = 640;
		global.camera.y          = 360;
		global.camera.x_to          = 640;
		global.camera.y_to          = 360;
		
		global.camera.zoom_level = 1;
		
		
		global.level_number = 0;	
	
	break;


}