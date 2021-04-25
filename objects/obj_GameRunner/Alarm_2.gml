/// @description Shoot Fire
// You can write your code in this editor
var i = irandom_range(0,3);

fire = instance_create_layer((i*256+128), room_height+64, "Instances", obj_Fire);
i = irandom_range(500,900);
alarm[2] = i;
