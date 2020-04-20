/// @description Insert description here
// You can write your code in this editor
blood -=15;
	if blood <=0{
		instance_destroy();
	// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=100;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Zombie death by bomb +100";
		}
}