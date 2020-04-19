/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self){
	if !instance_exists(oFPS){
		instance_create_layer(x,y,"Overlay",oFPS);
		status="Active";
		global.FPS = true;
	}
	else {
		instance_destroy(oFPS);
		status="Inactive";
		global.FPS = false;
	}
	instance_create_layer(x,y,"Overlay",Save);
}
