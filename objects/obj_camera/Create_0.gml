/// @description Insert description here
// You can write your code in this editor

//camera initiation
camera = camera_create();

cam_wd = 1920;
cam_hg = 1080;

display_set_gui_size(cam_wd, cam_hg);

camera_set_view_size(view_camera[0],cam_wd,cam_hg);
camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);

//camera variables
follow          = noone
x_to            = x;
y_to            = y;
tracking_factor = 10;
cam_angle       = 0;

//zoom variables

zoom_min            = 0.5;
zoom_max            = 5;
zoom_level          = 1;
default_zoom_width  = cam_wd;
default_zoom_height = cam_hg;
zoom_factor         = 0.2;
