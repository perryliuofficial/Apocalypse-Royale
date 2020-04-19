/// @description Insert description here
// You can write your code in this editor
if global.cameramove = true {
	x = mouse_x;
	y = mouse_y;
	positionx = x;
	positiony = y;
}
else{
	x = global.camerafollowx;	
	y = global.camerafollowy;
	positionx = x;
	positiony = y;
}