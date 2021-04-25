/// @description Hit blending
// You can write your code in this editor


if (IsGettingHit == true){
	
	if (image_blend == c_white){
	image_blend = c_red;
	}else{
			image_blend = c_white;
	}
	
	alarm[1]=10;
	
}

if (hp <= 0){
	image_blend = c_maroon;

}