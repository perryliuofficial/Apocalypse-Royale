/// @description Insert description here
// You can write your code in this editor
x= mouse_x;
y= mouse_y;
if mouse_check_button_pressed(mb_left){
	instance_destroy();
	instance_create_layer(x,y,"Overlay",oBoom);
	global.menu = 0;
}