/// @description Insert description here
// You can write your code in this editor

selected = noone;

buttons = [];
num_buttons = sprite_get_number(sprite_index);

var width = sprite_get_width(spr_selector);

for(var i = 0; i < num_buttons; i++){
	
	var b = instance_create_layer(x + width*i,y,"Buttons",obj_selector_button);
	
	b.selector    = id;
	b.image_index = i;
	buttons[i]    = b;
	
}
