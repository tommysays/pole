/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_MonSR_Attacking){
IsAttacking = false;
invicible = false;
sprite_index = spr_MonsterSR;
image_index = 0;
}

if (sprite_index == spr_MonSR_Hit){
IsGettingHit = false;

	if (IsAttacking == true)
	{
		invicible = true;
	sprite_index = spr_MonSR_Attacking;
	image_index = 5;
	}else{
	sprite_index = spr_MonsterSR;
	image_index = 0;
	}
}

if (sprite_index == spr_SRMonster_Appear){
	IsGettingHit = false;
sprite_index =  spr_MonsterSR;
image_index = 0;
invicible = false;
		var i = irandom_range(1,100);
alarm[0] = i;
}