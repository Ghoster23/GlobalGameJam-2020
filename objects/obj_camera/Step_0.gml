/// @description Insert description here
// You can write your code in this editor

//zoom in and out
if(mouse_check_button(mb_right)){
	
	if(follow != "pan_mode"){
		follow = "pan_mode";
		mouse_pivot_x = mouse_x;
		mouse_pivot_y = mouse_y;
		pan_x = x;
		pan_y = y;
		
		tracking_factor = 1;
	}
	
	pan_x = pan_x + mouse_pivot_x - mouse_x;
	pan_y = pan_y + mouse_pivot_y - mouse_y;
	
}
else{
	if(follow == "pan_mode"){
		follow = noone;
	}
}

if(global.pause){
	exit;
}


//allow player to rotate view
if(keyboard_check(ord("J"))){
	cam_angle -= 2;
}

if(keyboard_check(ord("K"))){
	cam_angle += 2;
}

