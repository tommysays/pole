/// @description Transition from attack to idle.

if (sprite_index == spr_long_attack) {
	if (IsThroneRoom) {
		sprite_index = spr_long_attack_right;
		image_index = 0;
	} else {	
		sprite_index = spr_idle_spin;
		image_index = 0;
		IsAttacking = false;
	}
} else if (sprite_index == spr_long_attack_right) {
	if (IsThroneRoom) {
		sprite_index = spr_long_attack;
		image_index = 0;
	} else {
		sprite_index = spr_idle_spin;
		image_index = 4;
		IsAttacking = false;
	}
} else if (sprite_index == spr_short_attack) {
	sprite_index = spr_idle_spin;
	image_index = image_xscale < 0 ? 7 : 3;
	image_xscale= 1;
	IsAttacking = false;
} else if (IsIntroPage && sprite_index == spr_idle_spin) {
	// Delays the loop for the intro page.
	image_index = 0;
	image_speed = 0;
	alarm[3] = 100;
}
