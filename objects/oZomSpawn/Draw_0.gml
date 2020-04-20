/// @description Insert description here
// You can write your code in this editor
draw_self();

if global.menu=9 {draw_set_color(c_yellow)};
if (position_meeting(mouse_x, mouse_y, self)){draw_set_color(c_yellow)};

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+(sprite_width/2),y-10+(sprite_height/2),"Zombie x"+string(global.zomspawn));

draw_set_color(c_gray);
draw_text(x+(sprite_width/2),y+10+(sprite_height/2),"9");

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(-1);