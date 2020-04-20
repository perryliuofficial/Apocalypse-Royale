/// @description Insert description here

draw_set_font(-1);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_rectangle(room_width/2-400,room_height/2-400,room_width/2+400,room_height/2+400,false);
draw_set_color(c_white);
draw_text_ext(room_width/2,room_height/2,"A Game by Perry Liu | perryliu.co.uk\n\n`Sprites` Kyst by Adam Saltsman\nhttps://adamatomic.itch.io/kyst *Public Domain*\n\n`Sprites` heli-animated by ruberboy\nhttps://opengameart.org/content/heli-animated *CC-BY 3.0*\n\n`Sprites` 2D Explosion Animations by Sinestesia\nhttps://opengameart.org/content/2d-explosion-animations-frame-by-frame *Royalty Free Non-Attribution*\n\n`Code` instance_nth_nearest by GMLScript's xot\nhttps://www.gmlscripts.com/script/instance_nth_nearest *Royalty Free Non-Attribution*",15,700);
draw_set_color(-1);
