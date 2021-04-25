/// @description Insert description here
// You can write your code in this editor
	if (IsHit == false){
	health = health -1;
	IsHit = true;
	alarm[1] = 200;
	sprite_index = spr_idle_spin;
	IsAttacking = false;
	alarm[2] = 1;
	}