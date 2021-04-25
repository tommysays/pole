/// @description Insert description here
// You can write your code in this editor


//background movement

var w = 0;

while (w < 4)
{
var e = random_range(0,256);
var d = irandom_range(0,8);
if (d == 0){
instance_create_layer((e+(256* w)), room_height, "Instances_1",obj_bckgrnd_bit);
}
w=w+1;
}

show_debug_message("Main1 y is " + string(layer_get_y("Background_Main1")));

if ((layer_get_y("Background_Main1") <= -1152)&&(Bkgrnd1ReadytoBottom=false))
{
	layer_y("Background_Main2",1152);
	layer_vspeed("Background_Main2", -0.25);
	Bkgrnd1ReadytoBottom = true;
	//layer_y("Background_Main1", layer_get_y("Background_Main1") -10);
} else if (layer_get_y("Background_Main2") <= -1152) && (Bkgrnd1ReadytoBottom == true)
{
	
	layer_y("Background_Main1",1152);
		layer_vspeed("Background_Main1", -0.25);
	Bkgrnd1ReadytoBottom = false;
}





if (player.ReadyForMonsters == true){
	//start wave
alarm[0] = 1;
var p = irandom_range(300, 800);
alarm[2] = p;
player.ReadyForMonsters = false;
}


if (OngoingWave && !(instance_exists(obj_Monster)))
{
	OngoingWave = false;
	obj_GameRunner.alarm[1] = 100; //trigger Game Runner wave update/end level
}


if (health <= 0){
	//gameover
	game_restart();
}


if (player.CanMove && (player.IsAttacking==false)){

	
	
		if (keyboard_check(vk_space) &&(player.IsHit == false)){ //check if space, then long range attack
				
			if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
				player.IsAttacking = true;
				player.sprite_index = spr_long_attack;
				player.image_index = 0;
			} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
				player.IsAttacking = true;
				player.sprite_index = spr_long_attack;
				player.image_xscale = player.image_xscale * -1; 
				player.image_index = 0;
			
			} 
	
		}else if (keyboard_check(vk_shift) && (player.IsHit == false)){ //check if shift, then short range attack
				
			if (keyboard_check(vk_left) || keyboard_check(ord("A"))){
				player.IsAttacking = true;
				player.sprite_index = spr_short_attack;
				player.image_index = 0;
				player.image_xscale=player.image_xscale*-1;
			} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))){
				player.IsAttacking = true;
				player.sprite_index = spr_short_attack;
				player.image_index = 0;
			} 
		} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))){
			if (player.y+player.Speed+(player.sprite_height/2) < room_height){
				player.y = player.y + player.Speed;
			}
	
		}else if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
			if (player.y-player.Speed-(player.sprite_height/2) >= 0 ){
			player.y = player.y - player.Speed;
		}
	}
}

