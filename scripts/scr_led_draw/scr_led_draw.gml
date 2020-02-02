
image_index = min( 1, energy);

draw_self();

if(image_index == 1){
	gpu_set_blendmode(bm_add);
	draw_set_alpha(0.4);
	draw_sprite(spr_light, 0, x, y - 20);
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}
