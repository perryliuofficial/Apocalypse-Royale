/// @description Melee Combat
// You can write your code in this editor
if global.pause = false {
	// if another person is nearby shoot them
	target=instance_nth_nearest(x,y,oPop,2)
	if ammo <=0 and distance_to_object(target) <15{
		action="Meleeing Contestant";
		printaction="Meleeing Contestant";
		randomize();
		if irandom(5)=5{
			target.heart -=1;
			effect_create_above(ef_flare, x, y, 1, c_white);
			// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 80 {
			global.TVscore +=10;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Melee combat +10";
		}
		}
	}
alarm[4] = room_speed*1;
}else{alarm[4] = room_speed*1;}