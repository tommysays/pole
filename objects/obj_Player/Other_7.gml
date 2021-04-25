/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_long_attack){
	sprite_index = spr_idle_spin;
	image_xscale = 1;
	image_index = 3; // set frame to the middle direction right
	IsAttacking = false;
} else if (sprite_index == spr_DancerLRAttackingRight){
	sprite_index = spr_idle_spin;
	image_index = 6; // set frame to the middle direction left
	IsAttacking = false;
}else if (sprite_index == spr_short_attack){
	sprite_index = spr_idle_spin;
	image_xscale= 1;
	image_index = 6; // set frame to the middle direction right
	IsAttacking = false;
}else if (sprite_index == spr_DancerSRAttackingLeft){
	sprite_index = spr_idle_spin;
	image_index = 3; // set frame to the middle direction left
	IsAttacking = false;
}

