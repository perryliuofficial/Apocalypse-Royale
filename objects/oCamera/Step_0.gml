/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	if global.menu != 1 {
		global.menu = 1;
		global.cameramove = true;
	}
	else {
		global.menu = 0;
		global.cameramove = false;
		oCircle.alarm[0]=1;
	}
}