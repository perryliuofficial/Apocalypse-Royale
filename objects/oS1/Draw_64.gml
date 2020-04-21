/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(10,10,"Alive "+string(instance_number(oPop)));
draw_text(10,25,"Dead "+string(global.dead));

draw_text(10,50,"Requirements");
draw_set_color(c_red);
if global.rescued = 1{draw_set_color(c_green);}
draw_text(10,65,"Human Rescued "+string(global.rescued)+"/1");
//draw_set_color(c_red);
//if printtimer <= 180{draw_set_color(c_green);}
//draw_text(10,80,"Round Time "+string(printtimer)+"/180 max");

draw_set_color(-1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);