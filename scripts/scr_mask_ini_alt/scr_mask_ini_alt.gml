///@Description Initialises the mask to allow masked drawing ALT because of how the game works

var cam = obj_camera;

var x1  =cam.x - cam.cam_wd;
var y1  =cam.y - cam.cam_hg;

var x2  =cam.x + cam.cam_wd;
var y2  =cam.y + cam.cam_hg;

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(x1, y1, x2, y2, false); //area where there shall not be light
draw_set_alpha(1);
