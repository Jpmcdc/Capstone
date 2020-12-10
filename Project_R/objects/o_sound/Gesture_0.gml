/// @description handles player pressing btn
/// @author: Juan Pablo Martinez

// turns game sounds off
if (o_savedata.sound_on) {
	o_savedata.sound_on = false;
	
	// plays sfx
	audio_play_sound(sfx_menu_back, 5, false);
	
	// saves settings on savedata
	ini_open("savedata.ini");
	ini_write_real("audio", "sound", 0 );
	ini_close();
	
	audio_sound_gain(sfx_error, 0, 0);
	audio_sound_gain(sfx_gem, 0, 0);
	audio_sound_gain(sfx_home, 0, 0);
	audio_sound_gain(sfx_menu_back, 0, 0);
	audio_sound_gain(sfx_menu_forward, 0, 0);
	audio_sound_gain(sfx_next_level, 0, 0);
	audio_sound_gain(sfx_retry, 0, 0);
	audio_sound_gain(sfx_settings, 0, 0);
	
// turns game sounds on
} else if (!o_savedata.sound_on) {
	o_savedata.sound_on = true;
	
	// plays sfx
	audio_play_sound(sfx_menu_back, 5, false);
	
	// saves settings on savedata
	ini_open("savedata.ini");
	ini_write_real("audio", "sound", 1 );
	ini_close();
	
	audio_sound_gain(sfx_error, 1, 0);
	audio_sound_gain(sfx_gem, 1, 0);
	audio_sound_gain(sfx_home, 0.6, 0);
	audio_sound_gain(sfx_menu_back, 1, 0);
	audio_sound_gain(sfx_menu_forward, 1, 0);
	audio_sound_gain(sfx_next_level, 1, 0);
	audio_sound_gain(sfx_retry, 1, 0);
	audio_sound_gain(sfx_settings, 0.6, 0);
}
