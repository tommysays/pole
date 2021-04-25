/// @description Insert description here
// You can write your code in this editor
if (other.IsGettingHit == false && IsAttacking==true){
	other.IsGettingHit = true;
	other.hp = other.hp - 1;

	if (other.object_index == obj_MonsterSR){
		other.sprite_index = spr_MonSR_Hit;
		other.image_index = 0;
				
	}else if (other.object_index == ob_MonsterLR){
		other.sprite_index = spr_MonsterLR_Hit;
		other.image_index = 0;
	} 

}

if ((other.IsAttacking == true) && (IsHit == false)){
	other.IsAttacking = false;
	health = health -1;
	IsHit = true;
	alarm[1] = 200;
}