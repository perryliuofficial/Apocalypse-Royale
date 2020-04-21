/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) and global.zomspawn >0{
	if instance_exists(oS1){oS1.alarm[8]=1;}
}