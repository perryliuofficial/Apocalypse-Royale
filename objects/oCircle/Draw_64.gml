/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_text(10,room_height-10,global.news10);
draw_text(10,room_height-25,global.news9);
draw_text(10,room_height-40,global.news8);
draw_text(10,room_height-55,global.news7);
draw_text(10,room_height-70,global.news6);
draw_text(10,room_height-85,global.news5);
draw_text(10,room_height-100,global.news4);
draw_text(10,room_height-115,global.news3);
draw_text(10,room_height-130,global.news2);
draw_text(10,room_height-145,global.news1);
draw_text(10,room_height-160,"TV Ratings: "+string(global.TVscore));
draw_set_color(-1);
draw_set_valign(-1);