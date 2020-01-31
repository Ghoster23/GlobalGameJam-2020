
//pan mode
if(follow = "pan_mode"){
	x_to = pan_x;
	y_to = pan_y;
}

//other modes
else if(follow != noone and instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
}

//move camera
x += (x_to - x)/tracking_factor;
y += (y_to - y)/tracking_factor;

//make sure camera is not outside bounds
//x = max(cam_wd/2, min(x, room_width - cam_wd/2));
//y = max(cam_hg/2, min(y, room_height - cam_hg/2));


//take care of zooming
zoom_level = clamp(zoom_level + ((mouse_wheel_down() - mouse_wheel_up())* 0.4), zoom_min, zoom_max)

if(zoom_level <= 1.3){
	global.zoomed_in = true;
}else{
	global.zoomed_in = false;
}

cam_wd  = lerp(cam_wd, zoom_level * default_zoom_width, zoom_factor);
cam_hg  = lerp(cam_hg, zoom_level * default_zoom_height, zoom_factor);

//update camera
camera_set_view_angle(view_camera[0],cam_angle);
camera_set_view_size(view_camera[0],cam_wd,cam_hg);
camera_set_view_pos(view_camera[0],x-camera_get_view_width(view_camera[0])/2,y-camera_get_view_height(view_camera[0])/2);

/*
var x_rot = lengthdir_x(1,cam_angle);
var y_rot = lengthdir_y(1,cam_angle);

var vm =  matrix_build_lookat(x,y,-10,x,y,0,x_rot,y_rot,0);
camera_set_view_mat(view_camera[0],vm);

var pm = matrix_build_projection_ortho(cam_wd,cam_hg,1,10000);
camera_set_proj_mat(view_camera[0],pm);


