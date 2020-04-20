/// @description Bomb Damange
// You can write your code in this editor
heart -=15;
	if heart <=0{
		instance_destroy();
	// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=1000;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Human death by bomb +1000";
		}
	global.dead +=1;
	global.alive-=1;
	effect_create_above(ef_flare, x, y, 1, c_red);	
}