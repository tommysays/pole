/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_DancerLRAttackingLeft){
	sprite_index = spr_Dancer;
	image_index = 3; // set frame to the middle direction right
	IsAttacking = false;
} else if (sprite_index == spr_DancerLRAttackingRight){
	sprite_index = spr_Dancer;
	image_index = 6; // set frame to the middle direction left
	IsAttacking = false;
}else if (sprite_index == spr_DancerSRAttackingRight){
	sprite_index = spr_Dancer;
	image_index = 6; // set frame to the middle direction right
	IsAttacking = false;
}else if (sprite_index == spr_DancerSRAttackingLeft){
	sprite_index = spr_Dancer;
	image_index = 3; // set frame to the middle direction left
	IsAttacking = false;
}

