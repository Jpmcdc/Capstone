/// @description handles player pressing btn
/// @author: Juan Pablo Martinez

if (visible) {
	
	// plays sfx
	audio_play_sound(sfx_menu_back, 5, false);

	// Popup to rate app
	var roomname = room_get_name(room);

	switch (roomname) {
		case "r_level_9":
			OSUtils_share("I just completed world 1 in Jinji! Check out the game on the Appstore! Download Jenji here: ");
			break;
		case "r_level_18":
			OSUtils_share("I just completed world 2 in Jinji! Check out the game on the Appstore! Download Jenji here: ");
			break;			
	}
}
