{
var vr = argument0;

var res;

if(is_string(vr)){
return vr;
}else 
if(is_array(vr)){
	res = "[";
	
	var len = array_length_1d(vr);
	
	for(var i = 0; i < len; i++){
		res += scr_variable_to_string(vr[i]);
		
		if(i < len - 1){ res += ","; }
		else { res += "]"; }
	}
	
}else {
	res = string(vr);
}

return res;
}