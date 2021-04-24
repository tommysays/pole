/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_MonSR_Attacking){
IsAttacking = false;
sprite_index = spr_MonsterSR;
image_index = 0;
}

if (sprite_index == spr_MonSR_Hit){
IsGettingHit = false;
sprite_index = spr_MonsterSR;
image_index = 0;
}