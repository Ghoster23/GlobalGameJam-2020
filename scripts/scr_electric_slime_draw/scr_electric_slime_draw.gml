draw_self();

var scale = 1   + irandom_range(-0.2,0.2);
var alpha = 0.2 + irandom_range(-0.2,0.2);

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_light, 1, x, y - 10, scale, scale, 0, c_white, alpha);
gpu_set_blendmode(bm_normal);