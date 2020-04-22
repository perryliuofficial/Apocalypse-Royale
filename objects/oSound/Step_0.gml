/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self){
	switch(global.AUDIO){
		case true:
		audio_set_master_gain(0,0);
		global.AUDIO=false;
//		status="Off";
		instance_create_layer(x,y,"Overlay",Save);
		exit;

		case false:
		audio_set_master_gain(0,1);
		global.AUDIO=true;
//		status="On";
		instance_create_layer(x,y,"Overlay",Save);
		exit;
	}
}