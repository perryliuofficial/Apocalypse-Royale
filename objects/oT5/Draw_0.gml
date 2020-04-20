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

if global.win = true and global.TVscore>35000{
	draw_set_color(c_green);
	draw_text(room_width/2,800,"Level Complete");
	draw_text(room_width/2,850,"Esc to Quit Level");
	
}

draw_set_font(-1);
draw_set_color(c_black);
draw_set_halign(-1);
draw_set_valign(-1);
draw_rectangle(180+82,10,890+82,100,false);
draw_set_color(c_white);
draw_text_ext(190+82,10,"The TV network is only willing to pay for these rescues if we put on a good show, so grab that camera and record all the violent goodness. You can manually control the camera, or click on a person while moving the camera to have it follow the human.",15,700);


draw_set_color(-1);
draw_set_font(-1);