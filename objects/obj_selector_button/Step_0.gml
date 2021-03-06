if(!enabled){
	
	if(selected){
		selector.selected = noone;
	}
	
	image_blend = c_gray;
}
else{
	image_blend = c_white;
}


if(selected){
	sprite_index = spr_selector_down;
	target_scale = 1;
	
	if(place_meeting(x, y, obj_phy_cursor)){	
		
		if(device_mouse_check_button_released(0,mb_left)){
			selector.selected = noone;
			scr_play_sound(snd_button_click1, snd_button_click2, snd_button_click3);
		}
	}
}
else{
	if(place_meeting(x, y, obj_phy_cursor)){	
		
		if(hover == false){
			hover = true;
			audio_play_sound(snd_button_hover1, 1, false);
		}
		
		if(device_mouse_check_button(0,mb_left)){
			
			sprite_index = spr_selector_down;
		}
		else if(device_mouse_check_button_released(0,mb_left)){
			selector.selected = id;
			scr_play_sound(snd_button_click1, snd_button_click2, snd_button_click3);
		}
		else{
			sprite_index = spr_selector_hover;
		}
		target_scale = 1.05;
	}
	else{
		

		hover = false;
		
		sprite_index = spr_selector;
		target_scale = 1;
	}
}

image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);