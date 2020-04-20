/// @description Insert description here
// You can write your code in this editor
draw_self();

//if global.menu=2 {draw_set_color(c_yellow)};
if (position_meeting(mouse_x, mouse_y, self)){draw_set_color(c_yellow)};

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+(sprite_width/2),y-10+(sprite_height/2),"Tutorial 5");

if global.rT5 = true {
	draw_set_color(c_green);
	draw_text(x+(sprite_width/2),y+10+(sprite_height/2),"Complete");
}
else{
	draw_set_color(c_red);
	draw_text(x+(sprite_width/2),y+10+(sprite_height/2),"Pending");
}


draw_set_font(-1);
//draw_set_color(c_black);
draw_set_halign(-1);
draw_set_valign(-1);
//draw_rectangle(180,10,890,100,false);
//draw_set_color(c_white);
//draw_text_ext(190,10,"The zombie apocalypse is here and the only one willing to pay for a rescue mission is a TV executive. Handle supply drops, nudge survivors, and manage the filming of this survival battle royale. Remember: only one survivor gets to be airlifted out.",15,700);
draw_set_color(-1);
