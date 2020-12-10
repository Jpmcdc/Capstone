/// @description handles player pressing btn
/// @author: Juan Pablo Martinez

// allows transition to targetted room 
if (visible) { 
	SlideTransition(TRANS_MODE.GOTO, r_level_16); 
	
	// plays sfx
	audio_play_sound(sfx_home, 5, false);
	
	// starts game music
	if (o_savedata.music_on) {
		audio_sound_gain(m_menu_bgm, 0, 1000);
		audio_sound_gain(m_world_1_bgm, 0.2, 1000);
	}
}




