/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) and global.bomb >0{
	if global.menu != 5 {
		global.menu = 5;
	}
	if !(instance_exists(oBoomTEMP)){
		instance_create_layer(mouse_x,mouse_y,"Overlay",oBoomTEMP);
	}
}