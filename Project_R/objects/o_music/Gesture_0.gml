/// @description handles player pressing btn
/// @author: Juan Pablo Martinez

// music is turned off
if (o_savedata.music_on) {
	o_savedata.music_on = false;
	
	// plays sfx
	audio_play_sound(sfx_menu_back, 5, false);
	
	// saves settings on savedata
	ini_open("savedata.ini");
	ini_write_real("audio", "music", 0 );
	ini_close();
	
	audio_sound_gain(m_menu_bgm, 0, 1000);
	
// music is turned on
} else if (!o_savedata.music_on) {
	o_savedata.music_on = true;
	
	// plays sfx
	audio_play_sound(sfx_menu_back, 5, false);
	
	// saves settings on savedata
	ini_open("savedata.ini");
	ini_write_real("audio", "music", 1 );
	ini_close();
	
	audio_sound_gain(m_menu_bgm, 0.2, 1000);
	audio_sound_gain(m_world_1_bgm, 0, 1000);
}
