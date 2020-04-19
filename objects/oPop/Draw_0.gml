/// @description Insert description here
// You can write your code in this editor
draw_set_halign(-1);
draw_set_font(-1);
draw_self();
if (position_meeting(mouse_x, mouse_y, self)){
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_text(x,y-20,ammo);	
}
draw_text(x,y,printaction);