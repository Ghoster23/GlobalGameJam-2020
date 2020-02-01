/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,obj_phy_cursor)){	   
	
	if(device_mouse_check_button(0,mb_left)){
		image_index = 2;
	}
	else if(device_mouse_check_button_released(0,mb_left)){
		room_goto(rm_level);
	}
	else{
		image_index = 1;
		target_scale = 1.2;
	}

}
else{
	
	image_index = 0;
	target_scale = 1;
}

image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);