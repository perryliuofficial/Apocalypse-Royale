/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) and global.movement >0{
	if global.menu != 3 {
		global.menu = 3;
	}
	if !(instance_exists(oMoveTemp)){
		instance_create_layer(mouse_x,mouse_y,"Background",oMoveTemp);
	}
}