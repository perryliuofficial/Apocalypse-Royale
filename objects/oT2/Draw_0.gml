/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if global.pause = true {
	draw_rectangle(400,400,room_width-400,room_height-400,false);
	draw_set_color(c_white);
	draw_text(room_width/2,room_height/2,"GAME PAUSED");
}

if global.win = true{
	draw_set_color(c_green);
	draw_text(room_width/2,800,"Level Complete");
	draw_text(room_width/2,850,"Esc to Quit Level");
	
}

draw_set_font(-1);
draw_set_color(c_black);
draw_set_halign(-1);
draw_set_valign(-1);
draw_rectangle(180,10,890,100,false);
draw_set_color(c_white);
draw_text_ext(190,10,"Supply drops can help replenish ammo and health. Drop a few to help out the remaining survivors. After all, it won't be much of a rescue if everyone's dead.",15,700);


draw_set_color(-1);
draw_set_font(-1);