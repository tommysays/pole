/// @description Insert description here
// You can write your code in this editor

if (hp <= 0){
//animation is death!!
instance_destroy();
}
if (IsMoving){

	if((y == NewY) || (abs(NewY-y)<5) ){ //if y is at NewY or close, end movement
		IsMoving = false;
		var i = irandom_range(100,300); //reset move or attack timer to random time
		alarm[0] = i;
	}else{
		if (y>NewY){
		y=y-5;
		}else{
		y=y+5;
		}
	}
} else if (IsAttacking){
	//attacking animation should be playing, but right now just skipping ahead with new alarm reset
		IsAttacking = false;
		var i = irandom_range(100,300); //reset move or attack timer to random time
		alarm[0] = i;
}