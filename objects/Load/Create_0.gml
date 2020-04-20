/// @description Insert description here
// You can write your code in this editor
/*if file_exists("GameOptions"){
	var map = ds_map_secure_load("GameOptions");

	global.FPS = map[? "FPS"];
	if global.FPS = true {instance_create_layer(x,y,"Overlay",oFPS);}
	
	global.AUDIO = map[? "AUDIO"];
	if global.AUDIO = false {audio_set_master_gain(0,0)}
	
	global.SCREEN = map[? "SCREEN"];
	window_set_fullscreen(global.SCREEN);
	
	global.rT1 = map[? "rT1"];
	global.rT2 = map[? "rT2"];
	global.rT3 = map[? "rT3"];
	global.rT4 = map[? "rT4"];
	global.rT5 = map[? "rT5"];
	
	global.rI1 = map[? "rI1"];
	global.rI2 = map[? "rI2"];
	global.rI3 = map[? "rI3"];
	global.rI4 = map[? "rI4"];
	global.rI5 = map[? "rI5"];
	
	ds_map_destroy(map);
}*/
//else{
	global.FPS = false;	
	global.AUDIO = true;
	global.SCREEN = true;
	
	global.rT1 = false;
	global.rT2 = false;
	global.rT3 = false;
	global.rT4 = false;
	global.rT5 = false;
	
	global.rI1 = false;
	global.rI2 = false;
	global.rI3 = false;
	global.rI4 = false;
	global.rI5 = false;
//}
room_goto(rMain);