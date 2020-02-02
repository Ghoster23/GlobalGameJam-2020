
image_index = min( 1, energy);

draw_self();

var _color = (object_index == obj_led_red ? 2 : 0);
var _alpha = (object_index == obj_led_red ? 1 : 0.3);

if(image_index == 1){
	gpu_set_blendmode(bm_add);
	draw_set_alpha(_alpha);
	draw_sprite(spr_light, _color, x, y - 20);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}
