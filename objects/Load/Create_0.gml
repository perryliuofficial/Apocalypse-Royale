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
	
	ds_map_destroy(map);
}*/
//else{
	global.FPS = false;	
	global.AUDIO = true;
	global.SCREEN = true;
	global.rT1 = false;
	global.rT2 = false;
	global.rT3 = false;
//}
room_goto(rMain);