/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	if global.menu != 2 {
		triggered = true;
		global.menu = 2;
	}
	if global.rescue = false and !(instance_exists(ofinalmissionTEMP)){
		instance_create_layer(mouse_x,mouse_y,"Background",ofinalmissionTEMP);
	}
}