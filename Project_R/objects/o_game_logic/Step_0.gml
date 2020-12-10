/// @description handles player death or level complete

/// level complete ///
if (gem_counter == 3) {
	// player stops moving
	o_player.idle = true;
	
	// enemy stops moving
	if (instance_exists(o_big_pirate)) {
		o_big_pirate.idle = true;
	}
	
	/// UNLOCK LEVELS ///
	
	var roomname = room_get_name(room);
	
	ini_open("savedata.ini");
	
	var level;
	level = ini_read_real("levels", "level", 1);
	
	switch (roomname) {
		case "r_level_1":
			o_savedata.level_2 = true;
			if (level < 2) { ini_write_real("levels", "level", 2 ); }
			break;
		case "r_level_2":
			o_savedata.level_3 = true;
			if (level < 3) { ini_write_real("levels", "level", 3 ); }
			break;
		case "r_level_3":
			o_savedata.level_4 = true;
			if (level < 4) { ini_write_real("levels", "level", 4 ); }
			break;
		case "r_level_4":
			o_savedata.level_5 = true;
			if (level < 5) { ini_write_real("levels", "level", 5 ); }
			break;
		case "r_level_5":
			o_savedata.level_6 = true;
			if (level < 6) { ini_write_real("levels", "level", 6 ); }
			break;
		case "r_level_6":
			o_savedata.level_7 = true;
			if (level < 7) { ini_write_real("levels", "level", 7 ); }
			break;
		case "r_level_7":
			o_savedata.level_8 = true;
			if (level < 8) { ini_write_real("levels", "level", 8 ); }
			break;
		case "r_level_8":
			o_savedata.level_9 = true;
			if (level < 9) { ini_write_real("levels", "level", 9 ); }
			break;
		case "r_level_9":
			o_savedata.level_10 = true;
			if (level < 10) { ini_write_real("levels", "level", 10 ); }
			break;
		case "r_level_10":
			o_savedata.level_11 = true;
			if (level < 11) { ini_write_real("levels", "level", 11 ); }
			break;
		case "r_level_11":
			o_savedata.level_12 = true;
			if (level < 12) { ini_write_real("levels", "level", 12 ); }
			break;
		case "r_level_12":
			o_savedata.level_13 = true;
			if (level < 13) { ini_write_real("levels", "level", 13 ); }
			break;
		case "r_level_13":
			o_savedata.level_14 = true;
			if (level < 14) { ini_write_real("levels", "level", 14 ); }
			break;
		case "r_level_14":
			o_savedata.level_15 = true;
			if (level < 15) { ini_write_real("levels", "level", 15 ); }
			break;
		case "r_level_15":
			o_savedata.level_16 = true;
			if (level < 16) { ini_write_real("levels", "level", 16 ); }
			break;
		case "r_level_16":
			o_savedata.level_17 = true;
			if (level < 17) { ini_write_real("levels", "level", 17 ); }
			break;
		case "r_level_17":
			o_savedata.level_18 = true;
			if (level < 18) { ini_write_real("levels", "level", 18 ); }
			break;
		case "r_level_18":
			//o_savedata.level_19 = true;
			//ini_write_real("levels", "level", 19 );
			break;
	}
	
	ini_close();
}

// this code helps to restart the room in PC
if (keyboard_check_pressed(vk_backspace)) {
	room_restart();
}