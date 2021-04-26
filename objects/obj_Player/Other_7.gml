/// @description Transition from attack to idle.

if (sprite_index == spr_long_attack){
	sprite_index = spr_idle_spin;
	image_index = 0;
	IsAttacking = false;
} else if (sprite_index == spr_long_attack_right){
	sprite_index = spr_idle_spin;
	image_index = 4;
	IsAttacking = false;
} else if (sprite_index == spr_short_attack){
	sprite_index = spr_idle_spin;
	image_index = 2;
	image_xscale= 1;
	IsAttacking = false;
} else if (IsIntroPage && sprite_index == spr_idle_spin) {
	image_index = 0;
	image_speed = 0;
	alarm[3] = 100;
}

