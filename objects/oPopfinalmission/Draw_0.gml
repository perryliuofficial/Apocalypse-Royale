/// @description Insert description here
// You can write your code in this editor
draw_self();
//if (position_meeting(mouse_x, mouse_y, self)){}
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_text(x+10,y,printaction);
draw_line_width(x+10,y+7,x+175,y+7,2);
draw_text(x+10,y+15,"Ammo " + string(ammo));
draw_text(x+10,y+30,"Health " +string(heart));



if global.cameramove = true and position_meeting(mouse_x, mouse_y, self){
	draw_sprite(sPopArrow,0,x,y);
}


draw_set_valign(-1);
draw_set_color(-1);