/// @description Insert description here

effect_create_above(ef_flare, x, y, 1, c_red);
instance_destroy();
global.dead +=1;
global.alive -=1;
instance_create_layer(x,y,"Instances",oZom);
// Add to TV points if within camera radius
		if distance_to_object(oCircle) < 150 {
			global.TVscore +=5000;
			global.news10 = global.news9;
			global.news9 = global.news8;
			global.news8 = global.news7;
			global.news7 = global.news6;
			global.news6 = global.news5;
			global.news5 = global.news4;
			global.news4 = global.news3;
			global.news3 = global.news2;
			global.news2 = global.news1;
			global.news1 = "Human death by zombie +5000";
		}