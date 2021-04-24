/// @description Insert description here
// You can write your code in this editor
if (other.IsGettingHit == false && IsAttacking==true){
	other.IsGettingHit = true;
	other.hp = other.hp - 1;
	other.alarm[1] = 200; //will not longer be hurting/invulnerable after 2 sec
}

if ((other.IsAttacking == true) && (IsHit == false)){
	other.IsAttacking = false;
	health = health -1;
	IsHit = true;
	alarm[1] = 200;
}