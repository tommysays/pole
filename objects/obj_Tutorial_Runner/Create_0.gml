/// @description Insert description here
// You can write your code in this editor
var numWaves = 1;
waves = array_create(numWaves);
waveDurations = array_create(numWaves);
currentWaveIndex = -1;
var columnOffset = 128;
var columnWidth = 256;
var waveIndex = 0;
var wave;
var horizontal_spacing = 40;



wave = array_create(2);
wave[0] = {
	text: "Move up\nand down",
	spawnX: columnOffset + columnWidth - horizontal_spacing,
	spawnY: room_height + 300
};
wave[1] = {
	text: "Arrow Keys\nor\n'W' and 'S'",
	spawnX: (columnOffset + columnWidth * 2 + horizontal_spacing),
	spawnY: room_height + 300
};
waves[waveIndex] = wave;
waveDurations[waveIndex] = 10;
waveIndex++;

wave = array_create(2);
wave[0] = {
	text: "Short-ranged\nAttack",
	spawnX: columnOffset + columnWidth - horizontal_spacing,
	spawnY: room_height + 300
};
wave[1] = {
	text: "SHIFT",
	spawnX: (columnOffset + columnWidth * 2 + horizontal_spacing),
	spawnY: room_height + 300
};
waves[waveIndex] = wave;
waveDurations[waveIndex] = 10;
waveIndex++;

wave = array_create(2);
wave[0] = {
	text: "Long-ranged\nAttack",
	spawnX: columnOffset + columnWidth - horizontal_spacing,
	spawnY: room_height + 300
};
wave[1] = {
	text: "SPACE",
	spawnX: (columnOffset + columnWidth * 2 + horizontal_spacing),
	spawnY: room_height + 300
};
waves[waveIndex] = wave;
waveDurations[waveIndex] = 11;
waveIndex++;

alarm[0] = 1;
