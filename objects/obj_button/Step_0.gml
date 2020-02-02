/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, obj_phy_cursor)){	   
	
	if(hover == false){
		hover = true;
		audio_play_sound(snd_button_hover2, 1, false);
	}
	
	if(device_mouse_check_button(0,mb_left)){
		image_index = 2;
	}
	else if(device_mouse_check_button_released(0,mb_left)){
		event_user(0);
		scr_play_sound(snd_button_click1, snd_button_click2, snd_button_click3);
	}
	else{
		image_index = 1;
		target_scale = 1.2;
	}

}
else{
	
	image_index = 0;
	target_scale = 1;
	
	hover = false;
}

image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);


