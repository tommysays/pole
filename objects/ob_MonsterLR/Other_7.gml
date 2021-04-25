/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_MonsterLR_Attack){
IsAttacking = false;
invicible= false;
sprite_index = spr_MonsterLR_Idle;
image_index = 0;
}

if (sprite_index == spr_MonsterLR_Hit){
IsGettingHit = false;


	if (IsAttacking == true)
	{
	invicible=true;
	sprite_index = spr_MonsterLR_Attack;
	image_index = 5;
	}else{
	sprite_index = spr_MonsterLR_Idle;
	image_index = 0;
	}

}
if (sprite_index == spr_LRMonster_Appear){
	IsGettingHit = false;
sprite_index = spr_MonsterLR_Idle;
image_index = 0;
	invicible = false;
	
	var i = irandom_range(1,100);
alarm[0] = i;
}