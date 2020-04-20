/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) and global.supply >0{
	if global.menu != 4 {
		global.menu = 4;
	}
	if !(instance_exists(oSupplyTEMP)){
		instance_create_layer(mouse_x,mouse_y,"Background",oSupplyTEMP);
	}
}