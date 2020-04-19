/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self){
	switch(global.SCREEN){
		case true:
		global.SCREEN=false;
		window_set_fullscreen(global.SCREEN);
		status="Windowed";
		instance_create_layer(x,y,"Overlay",Save);
		exit;

		case false:
		global.SCREEN=true;
		window_set_fullscreen(global.SCREEN);
		status="Fullscreen";
		instance_create_layer(x,y,"Overlay",Save);
		exit;
	}
}