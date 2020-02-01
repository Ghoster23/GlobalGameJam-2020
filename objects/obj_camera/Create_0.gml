/// @description Insert description here
// You can write your code in this editor

scr_unique_inst();

//camera initiation
camera = camera_create();

cam_wd = 1280;
cam_hg = 720;

display_set_gui_size(cam_wd, cam_hg);

camera_set_view_size(view_camera[0],cam_wd,cam_hg);
camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);

//camera variables
follow          = "static"
x_to            = x;
y_to            = y;
tracking_factor = 10;
cam_angle       = 0;

//zoom variables

zoom_min            = 0.6;
zoom_max            = 1;
zoom_level          = 1;
default_zoom_width  = cam_wd;
default_zoom_height = cam_hg;
zoom_factor         = 0.2;
zoom_increment      = 0.1;

//boundary
boundaries       = false;
left_boundary    = noone;
right_boundary   = noone;
top_boundary     = noone;
bottom_boundary  = noone;

