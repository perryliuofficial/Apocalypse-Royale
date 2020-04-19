/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_right);
draw_set_color(c_black);
draw_text(room_width-10, 10, "Real FPS = " + string(fps_real));
draw_text(room_width-10, 25, "Game FPS = " + string(fps));
draw_set_halign(-1);
draw_set_color(-1);