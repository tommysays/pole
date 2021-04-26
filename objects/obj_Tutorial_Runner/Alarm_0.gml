/// @description Send next wave

currentWaveIndex++;
if (currentWaveIndex >= array_length(waves)) {
	show_debug_message("Done sending waves.");
	room_goto(room_first);
} else {
	// Send wave
	var wave = waves[currentWaveIndex];
	var i;
	for (i = 0; i < array_length(wave); i++) {
		var monsterData = wave[i];
		var monster = instance_create_layer(
			monsterData.spawnX, monsterData.spawnY, "Instances", SignMonster
		);
		monster.SignText = monsterData.text;
		show_debug_message("Spawned monster # " + string(i) + " of wave " + string(currentWaveIndex));
		show_debug_message("At coordinates " + string(monsterData.spawnX) + ", " + string(monsterData.spawnY));
		show_debug_message("Text is " + monsterData.text);
	}
	// Wait for next wave.
	alarm[0] = waveDurations[currentWaveIndex] * room_speed;
	show_debug_message("This wave will finish in " + string(waveDurations[currentWaveIndex]) + " seconds.");
}