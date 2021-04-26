/// @description Send next wave

currentWaveIndex++;
if (currentWaveIndex >= array_length(waves)) {
	audio_stop_all();
	room_goto_next();
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
	}
	// Wait for next wave.
	alarm[0] = waveDurations[currentWaveIndex] * room_speed;
}