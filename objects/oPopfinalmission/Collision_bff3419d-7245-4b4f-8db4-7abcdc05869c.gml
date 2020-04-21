/// @description Insert description here

ammo += other.ammo;
heart += other.heart;
instance_destroy(other);
effect_create_above(ef_flare, x, y, 1, c_blue);
// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=500;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Collected supply drop +500";
		}