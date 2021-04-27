/// @description Insert description here
// You can write your code in this editor
 
 
 Starting = true;  //first state of player, appearing from top of screen and end in middle
 ReadyForMonsters = false;
 CanMove = false;
 IsAttacking = false;
 IsHit = false;
 Speed = 5;  //speed going up or down

if (IsThroneRoom) {
	Starting = false;
	
	sprite_index = spr_long_attack;
	image_index = 0;
	image_speed = 1;
}