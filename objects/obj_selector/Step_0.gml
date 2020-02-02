/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < num_buttons; i++){
	
	var b = buttons[i];
	
	if(b != selected){
		
		b.selected = false;
	}
	else{
		
		b.selected = true;
	}
}