/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_self()
draw_set_color(c_white);
if (position_meeting(mouse_x, mouse_y, self)){draw_set_color(c_yellow)};
draw_text(x,y,"Quit to Menu");
draw_set_color(-1);
draw_set_halign(-1);
draw_set_valign(-1);