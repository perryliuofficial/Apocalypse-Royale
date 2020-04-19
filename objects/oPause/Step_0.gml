/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	if global.pause = false {
		global.pause = true;
		instance_create_layer(room_width/2-150,room_height/2+100,"Overlay",oQuit);
		instance_create_layer(room_width/2+150,room_height/2+100,"Overlay",oRestart);
		}
	else {global.pause = false;
		instance_destroy(oQuit);
		instance_destroy(oRestart);
		}
}