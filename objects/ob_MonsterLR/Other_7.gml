/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_MonsterLR_Attack){
IsAttacking = false;
sprite_index = spr_MonsterLR_Idle;
image_index = 0;
}

if (sprite_index == spr_MonsterLR_Hit){
IsGettingHit = false;
sprite_index = spr_MonsterLR_Idle;
image_index = 0;
}