/// @description Insert description here
// You can write your code in this editor

scr_unique_inst();

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
global.level_number = 0;

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
global.camera = instance_create_layer(640, 360, layer, obj_camera);
global.camera.follow  = "static"; 


//other globals
global.pause = false;

global.zoomed_in = false;


//reset controller
instance_create_layer(x+700,y,"Instances",obj_reset_controller);


//PARTICLES
global.ps = part_system_create();
part_system_layer(global.ps, "Cursor");

global.part_electricity = scr_part_ini_electricity();
global.part_solder      = scr_part_ini_solder();

