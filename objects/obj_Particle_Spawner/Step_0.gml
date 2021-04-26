/// @description Insert description here
// You can write your code in this editor
var i;
for (i = 0; i < ParticlesPerStep; i++) {
	var d = irandom_range(0,8);
	if (d == 0){
		var xOffset = random_range(0,256);
		var inst = instance_create_layer(xOffset + (256* i), room_height, "Instances_1", obj_bckgrnd_bit);
		with (inst) {
			inst.image_blend = other.ParticleColor;
		}
	}
}
