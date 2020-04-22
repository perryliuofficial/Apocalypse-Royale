/// @description Insert description here
// You can write your code in this editor
randomize();
ammo=irandom_range(1,20);
heart=irandom_range(0,3);
if room != rInit and room != rMain and room != rLevel and room != rCredits{
	audio_play_sound(snd_wood, 20, false);
}
