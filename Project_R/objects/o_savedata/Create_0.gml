/// @description loads saved game
/// @author: Juan Pablo Martinez

// opens the save data file for the player
ini_open("savedata.ini");

/// SETTINGS ///
var music;
var sound;

music = ini_read_real("audio", "music", 1 );
sound = ini_read_real("audio", "sound", 1 );

if (music == 0) {
	music_on = false;
} else music_on = true;

if (sound == 0) {
	sound_on = false;
} else sound_on = true;

/// UNLOCKED LEVELS ///
var level;

level = ini_read_real("levels", "level", 1);

if (level >= 2) { level_2 = true; }
if (level >= 3) { level_3 = true; }
if (level >= 4) { level_4 = true; }
if (level >= 5) { level_5 = true; }
if (level >= 6) { level_6 = true; }
if (level >= 7) { level_7 = true; }
if (level >= 8) { level_8 = true; }
if (level >= 9) { level_9 = true; }
if (level >= 10) { level_10 = true; }
if (level >= 11) { level_11 = true; }
if (level >= 12) { level_12 = true; }
if (level >= 13) { level_13 = true; }
if (level >= 14) { level_14 = true; }
if (level >= 15) { level_15 = true; }
if (level >= 16) { level_16 = true; }
if (level >= 17) { level_17 = true; }
if (level >= 18) { level_18 = true; }

ini_close();