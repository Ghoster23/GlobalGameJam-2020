///@description Moves "a" towards "b" by "amount" and returns the result
///@param current_value
///@param max_value
///@param amount
// Nice bcause it will not overshoot "b", and works in both directions
// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);
var temp = noone;
var loop = argument3;

var a = argument0;
var b = argument1;

if(a > b){
	temp = a;
	a = b;
	b = temp;
}

opt1 = abs(a-b);
opt2 = (loop - b) + a;

if(opt1 < opt2){
	return scr_approach(argument0,argument1,argument2);
}
else if temp != noone{
	return scr_approach(argument0,loop+argument1,argument2);
}
else{
	return scr_approach(argument0,loop-argument1,argument2);
}


