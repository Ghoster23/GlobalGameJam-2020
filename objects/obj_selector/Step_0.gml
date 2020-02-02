/// @description Insert description here
// You can write your code in this editor

//enabled
if(!enabled){
	
	for(var i = 0; i < num_buttons; i++){
	
		var b = buttons[i];
		b.enabled = false;	
	}
}
else{
	
	for(var i = 0; i < num_buttons; i++){
	
		var b = buttons[i];
		
		if(b.units_left == 0){
			b.enabled = false;
		}
		else{
			b.enabled = true;	
		}
	}
	
}


//selection
for(var i = 0; i < num_buttons; i++){
	
	var b = buttons[i];
	
	if(b != selected){
		
		b.selected = false;
	}
	else{
		
		b.selected = true;
	}
}