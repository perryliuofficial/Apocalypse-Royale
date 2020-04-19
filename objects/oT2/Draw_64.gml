/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(10,10,"Alive "+string(global.alive));
draw_text(10,25,"Dead "+string(global.dead));

draw_text(10,50,"Mandatory Goal(s)");
if global.rescued = 1{draw_set_color(c_green);}
draw_text(10,65,"Human Rescued "+string(global.rescued)+"/1");

draw_set_color(-1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);