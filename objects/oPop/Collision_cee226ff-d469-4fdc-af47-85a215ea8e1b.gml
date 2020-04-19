/// @description Insert description here
// You can write your code in this editor
ammo += other.ammo;
instance_destroy(other);
effect_create_above(ef_flare, x, y, 1, c_blue)