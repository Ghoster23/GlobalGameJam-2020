/// @description Insert description here
// You can write your code in this editor

draw_script = noone;

physics_world_update_speed(room_speed*4);

x = 50;
y = 50;

//cursor
global.cursor = instance_create_layer(mouse_x,mouse_y,"Cursor",obj_phy_cursor);
global.cursor.target = "mouse";
global.cursor.visible = true;


//LEVEL INFO 
global.level_info = ds_list_create();

// w, h, file_name
ds_list_add(global.level_info, [20, 10, "level0.csv"]); //0
ds_list_add(global.level_info, [5,  10, "level1.csv"]); //1


//input
instance_create_layer(x+100,y,layer,obj_input);



//console
instance_create_layer(x+200,y,layer,obj_console);



//Windows
instance_create_layer(x+300,y,layer,obj_window_controller);



//draw controller
instance_create_layer(x+400,y,"Draw",obj_draw_controller);



//camera
global.camera = instance_create_layer(x+700,y+700,layer,obj_camera);
global.camera.follow  = noone; 


//level controller
global.level_number = 0;
instance_create_layer(x+500,y,layer,obj_level_controller);


//data structure controller
instance_create_layer(x+400,y,layer,obj_ds_controller);

global.pause = false;

global.zoomed_in = false;




